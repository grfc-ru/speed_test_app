import 'dart:io';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stream_bloc/stream_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../../core/entities/settings.dart';

part 'settings.freezed.dart';

class SettingsBloc extends StreamBloc<SettingsEvent, SettingsState> {
  final Settings settings;

  late SharedPreferences prefs;

  SettingsBloc({required this.settings}) : super(_Initial(settings));

  @override
  Stream<SettingsState> mapEventToStates(SettingsEvent event) => event.when(
        started: _started,
        changed: _changed,
      );

  Stream<SettingsState> _started() async* {
    prefs = await SharedPreferences.getInstance();

    if (prefs.getString('url') != null) {
      settings.url = prefs.getString('url')!;
    } else {
      await prefs.setString('url', settings.url);
    }

    if (prefs.getInt('timeMeasure') != null) {
      settings.timeMeasure = prefs.getInt('timeMeasure')!;
    } else {
      await prefs.setInt('timeMeasure', settings.timeMeasure);
    }

    var path = await _path();
    var iFile = await File('$path/upload.bin').exists();
    if (!iFile) {
      yield const SettingsState.generate();
      List<int> createData(int count) {
        return List.generate(count, (int index) => Random().nextInt(254));
      }

      List<int> data = await compute(createData, 104857600);
      var file = File('$path/upload.bin');
      await file.writeAsBytes(data);
    }
    yield SettingsState.initial(settings);
  }

  Stream<SettingsState> _changed(String key, dynamic value) async* {
    switch (key) {
      case 'url':
        settings.url = value;
        await prefs.setString(key, value);
        break;
      case 'timeMeasure':
        settings.timeMeasure = value;
        await prefs.setInt(key, value);
        break;
      default:
    }
    yield SettingsState.update(settings);
  }

  Future<String> _path() async {
    Directory? tempDir = await getExternalStorageDirectory();
    String tempPath = tempDir!.path;

    return tempPath;
  }
}

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started() = _Started;

  @Assert('key != null && value != null')
  const factory SettingsEvent.changed(String key, dynamic value) = _Changed;
}

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial(Settings settings) = _Initial;
  const factory SettingsState.generate() = _Generate;
  const factory SettingsState.update(Settings settings) = _Update;
  const factory SettingsState.error(String error) = _Error;
}
