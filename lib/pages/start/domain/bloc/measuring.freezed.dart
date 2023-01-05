// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'measuring.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MeasuringEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() download,
    required TResult Function() upload,
    required TResult Function() ready,
    required TResult Function(double speed) speedUpdate,
    required TResult Function(String error) addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Download value) download,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Ready value) ready,
    required TResult Function(_SpeedUpdate value) speedUpdate,
    required TResult Function(_AddError value) addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasuringEventCopyWith<$Res> {
  factory $MeasuringEventCopyWith(
          MeasuringEvent value, $Res Function(MeasuringEvent) then) =
      _$MeasuringEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MeasuringEventCopyWithImpl<$Res>
    implements $MeasuringEventCopyWith<$Res> {
  _$MeasuringEventCopyWithImpl(this._value, this._then);

  final MeasuringEvent _value;
  // ignore: unused_field
  final $Res Function(MeasuringEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$MeasuringEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'MeasuringEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() download,
    required TResult Function() upload,
    required TResult Function() ready,
    required TResult Function(double speed) speedUpdate,
    required TResult Function(String error) addError,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Download value) download,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Ready value) ready,
    required TResult Function(_SpeedUpdate value) speedUpdate,
    required TResult Function(_AddError value) addError,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MeasuringEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_DownloadCopyWith<$Res> {
  factory _$$_DownloadCopyWith(
          _$_Download value, $Res Function(_$_Download) then) =
      __$$_DownloadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DownloadCopyWithImpl<$Res> extends _$MeasuringEventCopyWithImpl<$Res>
    implements _$$_DownloadCopyWith<$Res> {
  __$$_DownloadCopyWithImpl(
      _$_Download _value, $Res Function(_$_Download) _then)
      : super(_value, (v) => _then(v as _$_Download));

  @override
  _$_Download get _value => super._value as _$_Download;
}

/// @nodoc

class _$_Download implements _Download {
  const _$_Download();

  @override
  String toString() {
    return 'MeasuringEvent.download()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Download);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() download,
    required TResult Function() upload,
    required TResult Function() ready,
    required TResult Function(double speed) speedUpdate,
    required TResult Function(String error) addError,
  }) {
    return download();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
  }) {
    return download?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Download value) download,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Ready value) ready,
    required TResult Function(_SpeedUpdate value) speedUpdate,
    required TResult Function(_AddError value) addError,
  }) {
    return download(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
  }) {
    return download?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(this);
    }
    return orElse();
  }
}

abstract class _Download implements MeasuringEvent {
  const factory _Download() = _$_Download;
}

/// @nodoc
abstract class _$$_UploadCopyWith<$Res> {
  factory _$$_UploadCopyWith(_$_Upload value, $Res Function(_$_Upload) then) =
      __$$_UploadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UploadCopyWithImpl<$Res> extends _$MeasuringEventCopyWithImpl<$Res>
    implements _$$_UploadCopyWith<$Res> {
  __$$_UploadCopyWithImpl(_$_Upload _value, $Res Function(_$_Upload) _then)
      : super(_value, (v) => _then(v as _$_Upload));

  @override
  _$_Upload get _value => super._value as _$_Upload;
}

/// @nodoc

class _$_Upload implements _Upload {
  const _$_Upload();

  @override
  String toString() {
    return 'MeasuringEvent.upload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Upload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() download,
    required TResult Function() upload,
    required TResult Function() ready,
    required TResult Function(double speed) speedUpdate,
    required TResult Function(String error) addError,
  }) {
    return upload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
  }) {
    return upload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Download value) download,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Ready value) ready,
    required TResult Function(_SpeedUpdate value) speedUpdate,
    required TResult Function(_AddError value) addError,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }
}

abstract class _Upload implements MeasuringEvent {
  const factory _Upload() = _$_Upload;
}

/// @nodoc
abstract class _$$_ReadyCopyWith<$Res> {
  factory _$$_ReadyCopyWith(_$_Ready value, $Res Function(_$_Ready) then) =
      __$$_ReadyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadyCopyWithImpl<$Res> extends _$MeasuringEventCopyWithImpl<$Res>
    implements _$$_ReadyCopyWith<$Res> {
  __$$_ReadyCopyWithImpl(_$_Ready _value, $Res Function(_$_Ready) _then)
      : super(_value, (v) => _then(v as _$_Ready));

  @override
  _$_Ready get _value => super._value as _$_Ready;
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready();

  @override
  String toString() {
    return 'MeasuringEvent.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Ready);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() download,
    required TResult Function() upload,
    required TResult Function() ready,
    required TResult Function(double speed) speedUpdate,
    required TResult Function(String error) addError,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Download value) download,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Ready value) ready,
    required TResult Function(_SpeedUpdate value) speedUpdate,
    required TResult Function(_AddError value) addError,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements MeasuringEvent {
  const factory _Ready() = _$_Ready;
}

/// @nodoc
abstract class _$$_SpeedUpdateCopyWith<$Res> {
  factory _$$_SpeedUpdateCopyWith(
          _$_SpeedUpdate value, $Res Function(_$_SpeedUpdate) then) =
      __$$_SpeedUpdateCopyWithImpl<$Res>;
  $Res call({double speed});
}

/// @nodoc
class __$$_SpeedUpdateCopyWithImpl<$Res>
    extends _$MeasuringEventCopyWithImpl<$Res>
    implements _$$_SpeedUpdateCopyWith<$Res> {
  __$$_SpeedUpdateCopyWithImpl(
      _$_SpeedUpdate _value, $Res Function(_$_SpeedUpdate) _then)
      : super(_value, (v) => _then(v as _$_SpeedUpdate));

  @override
  _$_SpeedUpdate get _value => super._value as _$_SpeedUpdate;

  @override
  $Res call({
    Object? speed = freezed,
  }) {
    return _then(_$_SpeedUpdate(
      speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SpeedUpdate implements _SpeedUpdate {
  const _$_SpeedUpdate(this.speed);

  @override
  final double speed;

  @override
  String toString() {
    return 'MeasuringEvent.speedUpdate(speed: $speed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SpeedUpdate &&
            const DeepCollectionEquality().equals(other.speed, speed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(speed));

  @JsonKey(ignore: true)
  @override
  _$$_SpeedUpdateCopyWith<_$_SpeedUpdate> get copyWith =>
      __$$_SpeedUpdateCopyWithImpl<_$_SpeedUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() download,
    required TResult Function() upload,
    required TResult Function() ready,
    required TResult Function(double speed) speedUpdate,
    required TResult Function(String error) addError,
  }) {
    return speedUpdate(speed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
  }) {
    return speedUpdate?.call(speed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (speedUpdate != null) {
      return speedUpdate(speed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Download value) download,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Ready value) ready,
    required TResult Function(_SpeedUpdate value) speedUpdate,
    required TResult Function(_AddError value) addError,
  }) {
    return speedUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
  }) {
    return speedUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (speedUpdate != null) {
      return speedUpdate(this);
    }
    return orElse();
  }
}

abstract class _SpeedUpdate implements MeasuringEvent {
  const factory _SpeedUpdate(final double speed) = _$_SpeedUpdate;

  double get speed;
  @JsonKey(ignore: true)
  _$$_SpeedUpdateCopyWith<_$_SpeedUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddErrorCopyWith<$Res> {
  factory _$$_AddErrorCopyWith(
          _$_AddError value, $Res Function(_$_AddError) then) =
      __$$_AddErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_AddErrorCopyWithImpl<$Res> extends _$MeasuringEventCopyWithImpl<$Res>
    implements _$$_AddErrorCopyWith<$Res> {
  __$$_AddErrorCopyWithImpl(
      _$_AddError _value, $Res Function(_$_AddError) _then)
      : super(_value, (v) => _then(v as _$_AddError));

  @override
  _$_AddError get _value => super._value as _$_AddError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_AddError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddError implements _AddError {
  const _$_AddError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'MeasuringEvent.addError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_AddErrorCopyWith<_$_AddError> get copyWith =>
      __$$_AddErrorCopyWithImpl<_$_AddError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() download,
    required TResult Function() upload,
    required TResult Function() ready,
    required TResult Function(double speed) speedUpdate,
    required TResult Function(String error) addError,
  }) {
    return addError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
  }) {
    return addError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? download,
    TResult Function()? upload,
    TResult Function()? ready,
    TResult Function(double speed)? speedUpdate,
    TResult Function(String error)? addError,
    required TResult orElse(),
  }) {
    if (addError != null) {
      return addError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Download value) download,
    required TResult Function(_Upload value) upload,
    required TResult Function(_Ready value) ready,
    required TResult Function(_SpeedUpdate value) speedUpdate,
    required TResult Function(_AddError value) addError,
  }) {
    return addError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
  }) {
    return addError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Download value)? download,
    TResult Function(_Upload value)? upload,
    TResult Function(_Ready value)? ready,
    TResult Function(_SpeedUpdate value)? speedUpdate,
    TResult Function(_AddError value)? addError,
    required TResult orElse(),
  }) {
    if (addError != null) {
      return addError(this);
    }
    return orElse();
  }
}

abstract class _AddError implements MeasuringEvent {
  const factory _AddError(final String error) = _$_AddError;

  String get error;
  @JsonKey(ignore: true)
  _$$_AddErrorCopyWith<_$_AddError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MeasuringState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)
        update,
    required TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)
        report,
    required TResult Function(String message) block,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Update value) update,
    required TResult Function(_Report value) report,
    required TResult Function(_Block value) block,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasuringStateCopyWith<$Res> {
  factory $MeasuringStateCopyWith(
          MeasuringState value, $Res Function(MeasuringState) then) =
      _$MeasuringStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MeasuringStateCopyWithImpl<$Res>
    implements $MeasuringStateCopyWith<$Res> {
  _$MeasuringStateCopyWithImpl(this._value, this._then);

  final MeasuringState _value;
  // ignore: unused_field
  final $Res Function(MeasuringState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$MeasuringStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MeasuringState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)
        update,
    required TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)
        report,
    required TResult Function(String message) block,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Update value) update,
    required TResult Function(_Report value) report,
    required TResult Function(_Block value) block,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MeasuringState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_UpdateCopyWith<$Res> {
  factory _$$_UpdateCopyWith(_$_Update value, $Res Function(_$_Update) then) =
      __$$_UpdateCopyWithImpl<$Res>;
  $Res call({double speed, List<ChartData> dData, List<ChartData> uData});
}

/// @nodoc
class __$$_UpdateCopyWithImpl<$Res> extends _$MeasuringStateCopyWithImpl<$Res>
    implements _$$_UpdateCopyWith<$Res> {
  __$$_UpdateCopyWithImpl(_$_Update _value, $Res Function(_$_Update) _then)
      : super(_value, (v) => _then(v as _$_Update));

  @override
  _$_Update get _value => super._value as _$_Update;

  @override
  $Res call({
    Object? speed = freezed,
    Object? dData = freezed,
    Object? uData = freezed,
  }) {
    return _then(_$_Update(
      speed == freezed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      dData == freezed
          ? _value._dData
          : dData // ignore: cast_nullable_to_non_nullable
              as List<ChartData>,
      uData == freezed
          ? _value._uData
          : uData // ignore: cast_nullable_to_non_nullable
              as List<ChartData>,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(
      this.speed, final List<ChartData> dData, final List<ChartData> uData)
      : _dData = dData,
        _uData = uData;

  @override
  final double speed;
  final List<ChartData> _dData;
  @override
  List<ChartData> get dData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dData);
  }

  final List<ChartData> _uData;
  @override
  List<ChartData> get uData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uData);
  }

  @override
  String toString() {
    return 'MeasuringState.update(speed: $speed, dData: $dData, uData: $uData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Update &&
            const DeepCollectionEquality().equals(other.speed, speed) &&
            const DeepCollectionEquality().equals(other._dData, _dData) &&
            const DeepCollectionEquality().equals(other._uData, _uData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(speed),
      const DeepCollectionEquality().hash(_dData),
      const DeepCollectionEquality().hash(_uData));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      __$$_UpdateCopyWithImpl<_$_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)
        update,
    required TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)
        report,
    required TResult Function(String message) block,
    required TResult Function(String error) error,
  }) {
    return update(speed, dData, uData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
  }) {
    return update?.call(speed, dData, uData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(speed, dData, uData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Update value) update,
    required TResult Function(_Report value) report,
    required TResult Function(_Block value) block,
    required TResult Function(_Error value) error,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements MeasuringState {
  const factory _Update(final double speed, final List<ChartData> dData,
      final List<ChartData> uData) = _$_Update;

  double get speed;
  List<ChartData> get dData;
  List<ChartData> get uData;
  @JsonKey(ignore: true)
  _$$_UpdateCopyWith<_$_Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReportCopyWith<$Res> {
  factory _$$_ReportCopyWith(_$_Report value, $Res Function(_$_Report) then) =
      __$$_ReportCopyWithImpl<$Res>;
  $Res call(
      {Measuring measuring, List<ChartData> dData, List<ChartData> uData});
}

/// @nodoc
class __$$_ReportCopyWithImpl<$Res> extends _$MeasuringStateCopyWithImpl<$Res>
    implements _$$_ReportCopyWith<$Res> {
  __$$_ReportCopyWithImpl(_$_Report _value, $Res Function(_$_Report) _then)
      : super(_value, (v) => _then(v as _$_Report));

  @override
  _$_Report get _value => super._value as _$_Report;

  @override
  $Res call({
    Object? measuring = freezed,
    Object? dData = freezed,
    Object? uData = freezed,
  }) {
    return _then(_$_Report(
      measuring == freezed
          ? _value.measuring
          : measuring // ignore: cast_nullable_to_non_nullable
              as Measuring,
      dData == freezed
          ? _value._dData
          : dData // ignore: cast_nullable_to_non_nullable
              as List<ChartData>,
      uData == freezed
          ? _value._uData
          : uData // ignore: cast_nullable_to_non_nullable
              as List<ChartData>,
    ));
  }
}

/// @nodoc

class _$_Report implements _Report {
  const _$_Report(
      this.measuring, final List<ChartData> dData, final List<ChartData> uData)
      : _dData = dData,
        _uData = uData;

  @override
  final Measuring measuring;
  final List<ChartData> _dData;
  @override
  List<ChartData> get dData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dData);
  }

  final List<ChartData> _uData;
  @override
  List<ChartData> get uData {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uData);
  }

  @override
  String toString() {
    return 'MeasuringState.report(measuring: $measuring, dData: $dData, uData: $uData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Report &&
            const DeepCollectionEquality().equals(other.measuring, measuring) &&
            const DeepCollectionEquality().equals(other._dData, _dData) &&
            const DeepCollectionEquality().equals(other._uData, _uData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(measuring),
      const DeepCollectionEquality().hash(_dData),
      const DeepCollectionEquality().hash(_uData));

  @JsonKey(ignore: true)
  @override
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      __$$_ReportCopyWithImpl<_$_Report>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)
        update,
    required TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)
        report,
    required TResult Function(String message) block,
    required TResult Function(String error) error,
  }) {
    return report(measuring, dData, uData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
  }) {
    return report?.call(measuring, dData, uData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (report != null) {
      return report(measuring, dData, uData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Update value) update,
    required TResult Function(_Report value) report,
    required TResult Function(_Block value) block,
    required TResult Function(_Error value) error,
  }) {
    return report(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
  }) {
    return report?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (report != null) {
      return report(this);
    }
    return orElse();
  }
}

abstract class _Report implements MeasuringState {
  const factory _Report(final Measuring measuring, final List<ChartData> dData,
      final List<ChartData> uData) = _$_Report;

  Measuring get measuring;
  List<ChartData> get dData;
  List<ChartData> get uData;
  @JsonKey(ignore: true)
  _$$_ReportCopyWith<_$_Report> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BlockCopyWith<$Res> {
  factory _$$_BlockCopyWith(_$_Block value, $Res Function(_$_Block) then) =
      __$$_BlockCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_BlockCopyWithImpl<$Res> extends _$MeasuringStateCopyWithImpl<$Res>
    implements _$$_BlockCopyWith<$Res> {
  __$$_BlockCopyWithImpl(_$_Block _value, $Res Function(_$_Block) _then)
      : super(_value, (v) => _then(v as _$_Block));

  @override
  _$_Block get _value => super._value as _$_Block;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_Block(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Block implements _Block {
  const _$_Block(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MeasuringState.block(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Block &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_BlockCopyWith<_$_Block> get copyWith =>
      __$$_BlockCopyWithImpl<_$_Block>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)
        update,
    required TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)
        report,
    required TResult Function(String message) block,
    required TResult Function(String error) error,
  }) {
    return block(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
  }) {
    return block?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (block != null) {
      return block(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Update value) update,
    required TResult Function(_Report value) report,
    required TResult Function(_Block value) block,
    required TResult Function(_Error value) error,
  }) {
    return block(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
  }) {
    return block?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (block != null) {
      return block(this);
    }
    return orElse();
  }
}

abstract class _Block implements MeasuringState {
  const factory _Block(final String message) = _$_Block;

  String get message;
  @JsonKey(ignore: true)
  _$$_BlockCopyWith<_$_Block> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$MeasuringStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'MeasuringState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)
        update,
    required TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)
        report,
    required TResult Function(String message) block,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            double speed, List<ChartData> dData, List<ChartData> uData)?
        update,
    TResult Function(
            Measuring measuring, List<ChartData> dData, List<ChartData> uData)?
        report,
    TResult Function(String message)? block,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Update value) update,
    required TResult Function(_Report value) report,
    required TResult Function(_Block value) block,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Update value)? update,
    TResult Function(_Report value)? report,
    TResult Function(_Block value)? block,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MeasuringState {
  const factory _Error(final String error) = _$_Error;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
