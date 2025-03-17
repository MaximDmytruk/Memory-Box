// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startRecording,
    required TResult Function() stopRecording,
    required TResult Function() playAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startRecording,
    TResult? Function()? stopRecording,
    TResult? Function()? playAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startRecording,
    TResult Function()? stopRecording,
    TResult Function()? playAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_PlayAudio value) playAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartRecording value)? startRecording,
    TResult? Function(_StopRecording value)? stopRecording,
    TResult? Function(_PlayAudio value)? playAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_PlayAudio value)? playAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordEventCopyWith<$Res> {
  factory $RecordEventCopyWith(
          RecordEvent value, $Res Function(RecordEvent) then) =
      _$RecordEventCopyWithImpl<$Res, RecordEvent>;
}

/// @nodoc
class _$RecordEventCopyWithImpl<$Res, $Val extends RecordEvent>
    implements $RecordEventCopyWith<$Res> {
  _$RecordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'RecordEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startRecording,
    required TResult Function() stopRecording,
    required TResult Function() playAudio,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startRecording,
    TResult? Function()? stopRecording,
    TResult? Function()? playAudio,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startRecording,
    TResult Function()? stopRecording,
    TResult Function()? playAudio,
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
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_PlayAudio value) playAudio,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartRecording value)? startRecording,
    TResult? Function(_StopRecording value)? stopRecording,
    TResult? Function(_PlayAudio value)? playAudio,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_PlayAudio value)? playAudio,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RecordEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$StartRecordingImplCopyWith<$Res> {
  factory _$$StartRecordingImplCopyWith(_$StartRecordingImpl value,
          $Res Function(_$StartRecordingImpl) then) =
      __$$StartRecordingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartRecordingImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$StartRecordingImpl>
    implements _$$StartRecordingImplCopyWith<$Res> {
  __$$StartRecordingImplCopyWithImpl(
      _$StartRecordingImpl _value, $Res Function(_$StartRecordingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartRecordingImpl implements _StartRecording {
  const _$StartRecordingImpl();

  @override
  String toString() {
    return 'RecordEvent.startRecording()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartRecordingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startRecording,
    required TResult Function() stopRecording,
    required TResult Function() playAudio,
  }) {
    return startRecording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startRecording,
    TResult? Function()? stopRecording,
    TResult? Function()? playAudio,
  }) {
    return startRecording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startRecording,
    TResult Function()? stopRecording,
    TResult Function()? playAudio,
    required TResult orElse(),
  }) {
    if (startRecording != null) {
      return startRecording();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_PlayAudio value) playAudio,
  }) {
    return startRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartRecording value)? startRecording,
    TResult? Function(_StopRecording value)? stopRecording,
    TResult? Function(_PlayAudio value)? playAudio,
  }) {
    return startRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_PlayAudio value)? playAudio,
    required TResult orElse(),
  }) {
    if (startRecording != null) {
      return startRecording(this);
    }
    return orElse();
  }
}

abstract class _StartRecording implements RecordEvent {
  const factory _StartRecording() = _$StartRecordingImpl;
}

/// @nodoc
abstract class _$$StopRecordingImplCopyWith<$Res> {
  factory _$$StopRecordingImplCopyWith(
          _$StopRecordingImpl value, $Res Function(_$StopRecordingImpl) then) =
      __$$StopRecordingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopRecordingImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$StopRecordingImpl>
    implements _$$StopRecordingImplCopyWith<$Res> {
  __$$StopRecordingImplCopyWithImpl(
      _$StopRecordingImpl _value, $Res Function(_$StopRecordingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopRecordingImpl implements _StopRecording {
  const _$StopRecordingImpl();

  @override
  String toString() {
    return 'RecordEvent.stopRecording()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopRecordingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startRecording,
    required TResult Function() stopRecording,
    required TResult Function() playAudio,
  }) {
    return stopRecording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startRecording,
    TResult? Function()? stopRecording,
    TResult? Function()? playAudio,
  }) {
    return stopRecording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startRecording,
    TResult Function()? stopRecording,
    TResult Function()? playAudio,
    required TResult orElse(),
  }) {
    if (stopRecording != null) {
      return stopRecording();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_PlayAudio value) playAudio,
  }) {
    return stopRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartRecording value)? startRecording,
    TResult? Function(_StopRecording value)? stopRecording,
    TResult? Function(_PlayAudio value)? playAudio,
  }) {
    return stopRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_PlayAudio value)? playAudio,
    required TResult orElse(),
  }) {
    if (stopRecording != null) {
      return stopRecording(this);
    }
    return orElse();
  }
}

abstract class _StopRecording implements RecordEvent {
  const factory _StopRecording() = _$StopRecordingImpl;
}

/// @nodoc
abstract class _$$PlayAudioImplCopyWith<$Res> {
  factory _$$PlayAudioImplCopyWith(
          _$PlayAudioImpl value, $Res Function(_$PlayAudioImpl) then) =
      __$$PlayAudioImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayAudioImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$PlayAudioImpl>
    implements _$$PlayAudioImplCopyWith<$Res> {
  __$$PlayAudioImplCopyWithImpl(
      _$PlayAudioImpl _value, $Res Function(_$PlayAudioImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PlayAudioImpl implements _PlayAudio {
  const _$PlayAudioImpl();

  @override
  String toString() {
    return 'RecordEvent.playAudio()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayAudioImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startRecording,
    required TResult Function() stopRecording,
    required TResult Function() playAudio,
  }) {
    return playAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startRecording,
    TResult? Function()? stopRecording,
    TResult? Function()? playAudio,
  }) {
    return playAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startRecording,
    TResult Function()? stopRecording,
    TResult Function()? playAudio,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_PlayAudio value) playAudio,
  }) {
    return playAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StartRecording value)? startRecording,
    TResult? Function(_StopRecording value)? stopRecording,
    TResult? Function(_PlayAudio value)? playAudio,
  }) {
    return playAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_PlayAudio value)? playAudio,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio(this);
    }
    return orElse();
  }
}

abstract class _PlayAudio implements RecordEvent {
  const factory _PlayAudio() = _$PlayAudioImpl;
}

/// @nodoc
mixin _$RecordState {
  RecordStatus get status => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordStateCopyWith<RecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordStateCopyWith<$Res> {
  factory $RecordStateCopyWith(
          RecordState value, $Res Function(RecordState) then) =
      _$RecordStateCopyWithImpl<$Res, RecordState>;
  @useResult
  $Res call({RecordStatus status, String? errorText});
}

/// @nodoc
class _$RecordStateCopyWithImpl<$Res, $Val extends RecordState>
    implements $RecordStateCopyWith<$Res> {
  _$RecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorText = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordStatus,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordStateImplCopyWith<$Res>
    implements $RecordStateCopyWith<$Res> {
  factory _$$RecordStateImplCopyWith(
          _$RecordStateImpl value, $Res Function(_$RecordStateImpl) then) =
      __$$RecordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecordStatus status, String? errorText});
}

/// @nodoc
class __$$RecordStateImplCopyWithImpl<$Res>
    extends _$RecordStateCopyWithImpl<$Res, _$RecordStateImpl>
    implements _$$RecordStateImplCopyWith<$Res> {
  __$$RecordStateImplCopyWithImpl(
      _$RecordStateImpl _value, $Res Function(_$RecordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorText = freezed,
  }) {
    return _then(_$RecordStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordStatus,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RecordStateImpl implements _RecordState {
  const _$RecordStateImpl({this.status = RecordStatus.initial, this.errorText});

  @override
  @JsonKey()
  final RecordStatus status;
  @override
  final String? errorText;

  @override
  String toString() {
    return 'RecordState(status: $status, errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorText);

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordStateImplCopyWith<_$RecordStateImpl> get copyWith =>
      __$$RecordStateImplCopyWithImpl<_$RecordStateImpl>(this, _$identity);
}

abstract class _RecordState implements RecordState {
  const factory _RecordState(
      {final RecordStatus status, final String? errorText}) = _$RecordStateImpl;

  @override
  RecordStatus get status;
  @override
  String? get errorText;

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordStateImplCopyWith<_$RecordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
