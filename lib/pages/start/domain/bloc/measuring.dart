import 'dart:async';
import 'dart:io';
import 'package:collection/collection.dart';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:stream_bloc/stream_bloc.dart';

import '../../../../core/entities/char_data.dart';
import '../../../../core/entities/measuring.dart';
import '../../../../core/entities/settings.dart';
import '../../../../generated/l10n.dart';

part 'measuring.freezed.dart';

class MeasuringBloc extends StreamBloc<MeasuringEvent, MeasuringState> {
  final Settings settings;
  final Measuring measuring;

  final _dio = Dio();
  bool _dloading = false;
  bool _uloading = false;
  int _bytes = 0;
  int _bytesOld = 0;

  final List<ChartData> _downloadData = [];
  final List<ChartData> _uploadData = [];
  final List<double> _speed = [];

  MeasuringBloc({
    required this.settings,
    required this.measuring,
  }) : super(const _Initial());

  @override
  Stream<MeasuringState> mapEventToStates(MeasuringEvent event) => event.when(
        started: _started,
        download: _download,
        upload: _upload,
        ready: _ready,
        speedUpdate: _speedUpdate,
        addError: _addError,
      );

  Stream<MeasuringState> _started() async* {
    add(const MeasuringEvent.download());
    yield MeasuringState.update(0, _downloadData, _uploadData);
  }

  Stream<MeasuringState> _download() async* {
    CancelToken cancelToken = CancelToken();
    _downloadData.clear();
    _downloadData.add(ChartData(0, 0));
    _uploadData.clear();
    _speed.clear();
    int count = 1;
    _bytes = 0;
    _bytesOld = 0;
    _dloading = true;

    Timer dTimer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (_dloading) {
        var bDiff = _bytes - _bytesOld;
        _bytesOld = _bytes;

        double speed = bDiff.toDouble() * 0.000008;
        _speed.add(speed);
        _downloadData.add(ChartData(count, speed));
        count++;
        add(MeasuringEvent.speedUpdate(speed));
      } else {
        timer.cancel();
        measuring.dSpeed = _speed.average;
        add(const MeasuringEvent.upload());
      }
    });
    Future.delayed(Duration(seconds: settings.timeMeasure + 1), () {
      if (_dloading) {
        cancelToken.cancel("Download finish");
        dTimer.cancel();
        _dloading = false;
        measuring.dSpeed = _speed.average;
        add(const MeasuringEvent.upload());
      }
    });

    int nTime = DateTime.now().microsecondsSinceEpoch;
    _dio
        .get(
      '${settings.url}/download',
      onReceiveProgress: _dprogress,
      cancelToken: cancelToken,
    )
        .then((value) {
      int tTime = DateTime.now().microsecondsSinceEpoch;
      double dif = (tTime - nTime).toDouble() / 1000000;
      double speed = _bytesOld.toDouble() / dif * 0.000008;
      dTimer.cancel();
      _dloading = false;
      measuring.dSpeed = speed;
      add(const MeasuringEvent.upload());
    }).onError((error, stackTrace) async {
      if ((error as DioError).message != "Download finish") {
        cancelToken.cancel("Stop measure");
        _dloading = false;
        add(MeasuringEvent.addError(
          S.current.download_fail,
        ));
        add(const MeasuringEvent.ready());
      }
      if (const String.fromEnvironment('SENTRY') != "") {
        await Sentry.captureException(error, stackTrace: stackTrace);
      }

      return null;
    });
  }

  Stream<MeasuringState> _upload() async* {
    CancelToken cancelToken = CancelToken();
    _uploadData.clear();
    _uploadData.add(ChartData(0, 0));
    _speed.clear();
    int count = 1;
    _bytes = 0;
    _bytesOld = 0;
    _uloading = true;

    Timer uTimer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (_uloading) {
        var bDiff = _bytes - _bytesOld;
        _bytesOld = _bytes;
        double speed = bDiff.toDouble() * 0.000008;
        _speed.add(speed);
        _uploadData.add(ChartData(count, speed));
        count++;
        add(MeasuringEvent.speedUpdate(speed));
      } else {
        timer.cancel();
        measuring.uSpeed = _speed.average;
        add(const MeasuringEvent.ready());
      }
    });

    Future.delayed(Duration(seconds: settings.timeMeasure + 1), () async {
      if (_uloading) {
        cancelToken.cancel("Upload finish");
        _uloading = false;
        uTimer.cancel();
        measuring.uSpeed = _speed.average;
        add(const MeasuringEvent.ready());
      }
    });

    var path = await _path();
    var file = FormData.fromMap({
      'file': await MultipartFile.fromFile(
        '$path/upload.bin',
        filename: 'upload.bin',
      ),
    });

    int nTime = DateTime.now().microsecondsSinceEpoch;
    _dio
        .post(
      "${settings.url}/upload",
      data: file,
      onSendProgress: _uprogress,
      cancelToken: cancelToken,
    )
        .then((value) async {
      int tTime = DateTime.now().microsecondsSinceEpoch;
      double dif = (tTime - nTime).toDouble() / 1000000;
      double speed = _bytesOld.toDouble() / dif * 0.000008;
      uTimer.cancel();
      _uloading = false;
      measuring.uSpeed = speed;
      add(const MeasuringEvent.ready());
    }).onError((error, stackTrace) async {
      if ((error as DioError).message != "Upload finish") {
        cancelToken.cancel("Stop measure");
        _uloading = false;
        add(MeasuringEvent.addError(
          S.current.upload_fail,
        ));
        add(const MeasuringEvent.ready());
      }
      if (const String.fromEnvironment('SENTRY') != "") {
        await Sentry.captureException(error, stackTrace: stackTrace);
      }

      return null;
    });
  }

  Stream<MeasuringState> _ready() async* {
    yield MeasuringState.report(measuring, _downloadData, _uploadData);
  }

  Stream<MeasuringState> _speedUpdate(double speed) async* {
    yield MeasuringState.update(speed, _downloadData, _uploadData);
  }

  Stream<MeasuringState> _addError(String error) async* {
    yield MeasuringState.error(error);
  }

  void _dprogress(int value, int _) {
    if (_dloading) {
      _bytes = value;
    }
  }

  void _uprogress(int value, int _) {
    if (_uloading) {
      _bytes = value;
    }
  }

  Future<String> _path() async {
    Directory? tempDir = await getExternalStorageDirectory();
    String tempPath = tempDir!.path;

    return tempPath;
  }
}

@freezed
class MeasuringEvent with _$MeasuringEvent {
  const factory MeasuringEvent.started() = _Started;
  const factory MeasuringEvent.download() = _Download;
  const factory MeasuringEvent.upload() = _Upload;
  const factory MeasuringEvent.ready() = _Ready;
  const factory MeasuringEvent.speedUpdate(double speed) = _SpeedUpdate;
  const factory MeasuringEvent.addError(String error) = _AddError;
}

@freezed
class MeasuringState with _$MeasuringState {
  const factory MeasuringState.initial() = _Initial;
  const factory MeasuringState.update(
    double speed,
    List<ChartData> dData,
    List<ChartData> uData,
  ) = _Update;
  const factory MeasuringState.report(
    Measuring measuring,
    List<ChartData> dData,
    List<ChartData> uData,
  ) = _Report;
  const factory MeasuringState.block(String message) = _Block;
  const factory MeasuringState.error(String error) = _Error;
}
