import 'package:flutter_telephony_info/flutter_telephony_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:stream_bloc/stream_bloc.dart';

import '../../../../core/entities/measuring.dart';
import '../../../../generated/l10n.dart';

part 'params.freezed.dart';

class ParamsBloc extends StreamBloc<ParamsEvent, ParamsState> {
  final Measuring measuring;

  ParamsBloc({required this.measuring}) : super(const _Initial());

  @override
  Stream<ParamsState> mapEventToStates(ParamsEvent event) => event.when(
        started: _started,
      );

  Stream<ParamsState> _started() async* {
    final flutterTelephonyInfoPlugin = TelephonyAPI();
    List<TelephonyInfo?>? telephonyInfo;
    try {
      telephonyInfo = await flutterTelephonyInfoPlugin.getInfo();
      measuring.opName = telephonyInfo?.first?.displayName;
      measuring.opCode = telephonyInfo?.first?.mobileNetworkCode;
      measuring.netType = telephonyInfo?.first?.radioType;
      measuring.netClass = telephonyInfo?.first?.networkGeneration;
      measuring.cid = telephonyInfo?.first?.cellId;
      measuring.rssi = telephonyInfo?.first?.cellSignalStrength;

      var position = await Geolocator.getCurrentPosition();
      measuring.lat = position.latitude;
      measuring.lon = position.longitude;

      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      measuring.appVersion = packageInfo.version;
      yield ParamsState.update(measuring);
    } catch (_) {
      yield ParamsState.error(S.current.error_gps);
    }
  }
}

@freezed
class ParamsEvent with _$ParamsEvent {
  const factory ParamsEvent.started() = _Started;
}

@freezed
class ParamsState with _$ParamsState {
  const factory ParamsState.initial() = _Initial;
  const factory ParamsState.update(Measuring measuring) = _Update;
  const factory ParamsState.error(String error) = _Error;
}
