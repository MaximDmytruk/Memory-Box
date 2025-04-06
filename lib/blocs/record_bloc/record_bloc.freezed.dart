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
    required TResult Function() startRecording,
    required TResult Function() stopRecording,
    required TResult Function(String audioPath) playAudio,
    required TResult Function(List<double> amplitudeHistory)
        updateAmplitudeHistory,
    required TResult Function(int recordingDuration) updateRecordingDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function()? stopRecording,
    TResult? Function(String audioPath)? playAudio,
    TResult? Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult? Function(int recordingDuration)? updateRecordingDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function()? stopRecording,
    TResult Function(String audioPath)? playAudio,
    TResult Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult Function(int recordingDuration)? updateRecordingDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateAmplitudeHistory value)
        updateAmplitudeHistory,
    required TResult Function(_UpdateRecordingDuration value)
        updateRecordingDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartRecording value)? startRecording,
    TResult? Function(_StopRecording value)? stopRecording,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult? Function(_UpdateRecordingDuration value)? updateRecordingDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult Function(_UpdateRecordingDuration value)? updateRecordingDuration,
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
    required TResult Function() startRecording,
    required TResult Function() stopRecording,
    required TResult Function(String audioPath) playAudio,
    required TResult Function(List<double> amplitudeHistory)
        updateAmplitudeHistory,
    required TResult Function(int recordingDuration) updateRecordingDuration,
  }) {
    return startRecording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function()? stopRecording,
    TResult? Function(String audioPath)? playAudio,
    TResult? Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult? Function(int recordingDuration)? updateRecordingDuration,
  }) {
    return startRecording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function()? stopRecording,
    TResult Function(String audioPath)? playAudio,
    TResult Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult Function(int recordingDuration)? updateRecordingDuration,
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
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateAmplitudeHistory value)
        updateAmplitudeHistory,
    required TResult Function(_UpdateRecordingDuration value)
        updateRecordingDuration,
  }) {
    return startRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartRecording value)? startRecording,
    TResult? Function(_StopRecording value)? stopRecording,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult? Function(_UpdateRecordingDuration value)? updateRecordingDuration,
  }) {
    return startRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult Function(_UpdateRecordingDuration value)? updateRecordingDuration,
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
    required TResult Function() startRecording,
    required TResult Function() stopRecording,
    required TResult Function(String audioPath) playAudio,
    required TResult Function(List<double> amplitudeHistory)
        updateAmplitudeHistory,
    required TResult Function(int recordingDuration) updateRecordingDuration,
  }) {
    return stopRecording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function()? stopRecording,
    TResult? Function(String audioPath)? playAudio,
    TResult? Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult? Function(int recordingDuration)? updateRecordingDuration,
  }) {
    return stopRecording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function()? stopRecording,
    TResult Function(String audioPath)? playAudio,
    TResult Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult Function(int recordingDuration)? updateRecordingDuration,
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
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateAmplitudeHistory value)
        updateAmplitudeHistory,
    required TResult Function(_UpdateRecordingDuration value)
        updateRecordingDuration,
  }) {
    return stopRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartRecording value)? startRecording,
    TResult? Function(_StopRecording value)? stopRecording,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult? Function(_UpdateRecordingDuration value)? updateRecordingDuration,
  }) {
    return stopRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult Function(_UpdateRecordingDuration value)? updateRecordingDuration,
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
  @useResult
  $Res call({String audioPath});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = null,
  }) {
    return _then(_$PlayAudioImpl(
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayAudioImpl implements _PlayAudio {
  const _$PlayAudioImpl({required this.audioPath});

  @override
  final String audioPath;

  @override
  String toString() {
    return 'RecordEvent.playAudio(audioPath: $audioPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayAudioImpl &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioPath);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayAudioImplCopyWith<_$PlayAudioImpl> get copyWith =>
      __$$PlayAudioImplCopyWithImpl<_$PlayAudioImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecording,
    required TResult Function() stopRecording,
    required TResult Function(String audioPath) playAudio,
    required TResult Function(List<double> amplitudeHistory)
        updateAmplitudeHistory,
    required TResult Function(int recordingDuration) updateRecordingDuration,
  }) {
    return playAudio(audioPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function()? stopRecording,
    TResult? Function(String audioPath)? playAudio,
    TResult? Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult? Function(int recordingDuration)? updateRecordingDuration,
  }) {
    return playAudio?.call(audioPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function()? stopRecording,
    TResult Function(String audioPath)? playAudio,
    TResult Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult Function(int recordingDuration)? updateRecordingDuration,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio(audioPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateAmplitudeHistory value)
        updateAmplitudeHistory,
    required TResult Function(_UpdateRecordingDuration value)
        updateRecordingDuration,
  }) {
    return playAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartRecording value)? startRecording,
    TResult? Function(_StopRecording value)? stopRecording,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult? Function(_UpdateRecordingDuration value)? updateRecordingDuration,
  }) {
    return playAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult Function(_UpdateRecordingDuration value)? updateRecordingDuration,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio(this);
    }
    return orElse();
  }
}

abstract class _PlayAudio implements RecordEvent {
  const factory _PlayAudio({required final String audioPath}) = _$PlayAudioImpl;

  String get audioPath;

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayAudioImplCopyWith<_$PlayAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAmplitudeHistoryImplCopyWith<$Res> {
  factory _$$UpdateAmplitudeHistoryImplCopyWith(
          _$UpdateAmplitudeHistoryImpl value,
          $Res Function(_$UpdateAmplitudeHistoryImpl) then) =
      __$$UpdateAmplitudeHistoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<double> amplitudeHistory});
}

/// @nodoc
class __$$UpdateAmplitudeHistoryImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$UpdateAmplitudeHistoryImpl>
    implements _$$UpdateAmplitudeHistoryImplCopyWith<$Res> {
  __$$UpdateAmplitudeHistoryImplCopyWithImpl(
      _$UpdateAmplitudeHistoryImpl _value,
      $Res Function(_$UpdateAmplitudeHistoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amplitudeHistory = null,
  }) {
    return _then(_$UpdateAmplitudeHistoryImpl(
      amplitudeHistory: null == amplitudeHistory
          ? _value._amplitudeHistory
          : amplitudeHistory // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc

class _$UpdateAmplitudeHistoryImpl implements _UpdateAmplitudeHistory {
  const _$UpdateAmplitudeHistoryImpl(
      {required final List<double> amplitudeHistory})
      : _amplitudeHistory = amplitudeHistory;

  final List<double> _amplitudeHistory;
  @override
  List<double> get amplitudeHistory {
    if (_amplitudeHistory is EqualUnmodifiableListView)
      return _amplitudeHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amplitudeHistory);
  }

  @override
  String toString() {
    return 'RecordEvent.updateAmplitudeHistory(amplitudeHistory: $amplitudeHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAmplitudeHistoryImpl &&
            const DeepCollectionEquality()
                .equals(other._amplitudeHistory, _amplitudeHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_amplitudeHistory));

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAmplitudeHistoryImplCopyWith<_$UpdateAmplitudeHistoryImpl>
      get copyWith => __$$UpdateAmplitudeHistoryImplCopyWithImpl<
          _$UpdateAmplitudeHistoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecording,
    required TResult Function() stopRecording,
    required TResult Function(String audioPath) playAudio,
    required TResult Function(List<double> amplitudeHistory)
        updateAmplitudeHistory,
    required TResult Function(int recordingDuration) updateRecordingDuration,
  }) {
    return updateAmplitudeHistory(amplitudeHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function()? stopRecording,
    TResult? Function(String audioPath)? playAudio,
    TResult? Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult? Function(int recordingDuration)? updateRecordingDuration,
  }) {
    return updateAmplitudeHistory?.call(amplitudeHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function()? stopRecording,
    TResult Function(String audioPath)? playAudio,
    TResult Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult Function(int recordingDuration)? updateRecordingDuration,
    required TResult orElse(),
  }) {
    if (updateAmplitudeHistory != null) {
      return updateAmplitudeHistory(amplitudeHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateAmplitudeHistory value)
        updateAmplitudeHistory,
    required TResult Function(_UpdateRecordingDuration value)
        updateRecordingDuration,
  }) {
    return updateAmplitudeHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartRecording value)? startRecording,
    TResult? Function(_StopRecording value)? stopRecording,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult? Function(_UpdateRecordingDuration value)? updateRecordingDuration,
  }) {
    return updateAmplitudeHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult Function(_UpdateRecordingDuration value)? updateRecordingDuration,
    required TResult orElse(),
  }) {
    if (updateAmplitudeHistory != null) {
      return updateAmplitudeHistory(this);
    }
    return orElse();
  }
}

abstract class _UpdateAmplitudeHistory implements RecordEvent {
  const factory _UpdateAmplitudeHistory(
          {required final List<double> amplitudeHistory}) =
      _$UpdateAmplitudeHistoryImpl;

  List<double> get amplitudeHistory;

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateAmplitudeHistoryImplCopyWith<_$UpdateAmplitudeHistoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateRecordingDurationImplCopyWith<$Res> {
  factory _$$UpdateRecordingDurationImplCopyWith(
          _$UpdateRecordingDurationImpl value,
          $Res Function(_$UpdateRecordingDurationImpl) then) =
      __$$UpdateRecordingDurationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int recordingDuration});
}

/// @nodoc
class __$$UpdateRecordingDurationImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$UpdateRecordingDurationImpl>
    implements _$$UpdateRecordingDurationImplCopyWith<$Res> {
  __$$UpdateRecordingDurationImplCopyWithImpl(
      _$UpdateRecordingDurationImpl _value,
      $Res Function(_$UpdateRecordingDurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recordingDuration = null,
  }) {
    return _then(_$UpdateRecordingDurationImpl(
      recordingDuration: null == recordingDuration
          ? _value.recordingDuration
          : recordingDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateRecordingDurationImpl implements _UpdateRecordingDuration {
  const _$UpdateRecordingDurationImpl({required this.recordingDuration});

  @override
  final int recordingDuration;

  @override
  String toString() {
    return 'RecordEvent.updateRecordingDuration(recordingDuration: $recordingDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateRecordingDurationImpl &&
            (identical(other.recordingDuration, recordingDuration) ||
                other.recordingDuration == recordingDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recordingDuration);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateRecordingDurationImplCopyWith<_$UpdateRecordingDurationImpl>
      get copyWith => __$$UpdateRecordingDurationImplCopyWithImpl<
          _$UpdateRecordingDurationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecording,
    required TResult Function() stopRecording,
    required TResult Function(String audioPath) playAudio,
    required TResult Function(List<double> amplitudeHistory)
        updateAmplitudeHistory,
    required TResult Function(int recordingDuration) updateRecordingDuration,
  }) {
    return updateRecordingDuration(recordingDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function()? stopRecording,
    TResult? Function(String audioPath)? playAudio,
    TResult? Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult? Function(int recordingDuration)? updateRecordingDuration,
  }) {
    return updateRecordingDuration?.call(recordingDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function()? stopRecording,
    TResult Function(String audioPath)? playAudio,
    TResult Function(List<double> amplitudeHistory)? updateAmplitudeHistory,
    TResult Function(int recordingDuration)? updateRecordingDuration,
    required TResult orElse(),
  }) {
    if (updateRecordingDuration != null) {
      return updateRecordingDuration(recordingDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartRecording value) startRecording,
    required TResult Function(_StopRecording value) stopRecording,
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_UpdateAmplitudeHistory value)
        updateAmplitudeHistory,
    required TResult Function(_UpdateRecordingDuration value)
        updateRecordingDuration,
  }) {
    return updateRecordingDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartRecording value)? startRecording,
    TResult? Function(_StopRecording value)? stopRecording,
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult? Function(_UpdateRecordingDuration value)? updateRecordingDuration,
  }) {
    return updateRecordingDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartRecording value)? startRecording,
    TResult Function(_StopRecording value)? stopRecording,
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_UpdateAmplitudeHistory value)? updateAmplitudeHistory,
    TResult Function(_UpdateRecordingDuration value)? updateRecordingDuration,
    required TResult orElse(),
  }) {
    if (updateRecordingDuration != null) {
      return updateRecordingDuration(this);
    }
    return orElse();
  }
}

abstract class _UpdateRecordingDuration implements RecordEvent {
  const factory _UpdateRecordingDuration(
      {required final int recordingDuration}) = _$UpdateRecordingDurationImpl;

  int get recordingDuration;

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateRecordingDurationImplCopyWith<_$UpdateRecordingDurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecordState {
  RecordStatus get status => throw _privateConstructorUsedError;
  String? get audioPath => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;
  List<double> get amplitudeHistory => throw _privateConstructorUsedError;
  int get recordingDuration => throw _privateConstructorUsedError;

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
  $Res call(
      {RecordStatus status,
      String? audioPath,
      String? errorText,
      List<double> amplitudeHistory,
      int recordingDuration});
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
    Object? audioPath = freezed,
    Object? errorText = freezed,
    Object? amplitudeHistory = null,
    Object? recordingDuration = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordStatus,
      audioPath: freezed == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      amplitudeHistory: null == amplitudeHistory
          ? _value.amplitudeHistory
          : amplitudeHistory // ignore: cast_nullable_to_non_nullable
              as List<double>,
      recordingDuration: null == recordingDuration
          ? _value.recordingDuration
          : recordingDuration // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call(
      {RecordStatus status,
      String? audioPath,
      String? errorText,
      List<double> amplitudeHistory,
      int recordingDuration});
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
    Object? audioPath = freezed,
    Object? errorText = freezed,
    Object? amplitudeHistory = null,
    Object? recordingDuration = null,
  }) {
    return _then(_$RecordStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordStatus,
      audioPath: freezed == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      amplitudeHistory: null == amplitudeHistory
          ? _value._amplitudeHistory
          : amplitudeHistory // ignore: cast_nullable_to_non_nullable
              as List<double>,
      recordingDuration: null == recordingDuration
          ? _value.recordingDuration
          : recordingDuration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RecordStateImpl implements _RecordState {
  const _$RecordStateImpl(
      {this.status = RecordStatus.initial,
      this.audioPath,
      this.errorText,
      final List<double> amplitudeHistory = const [],
      this.recordingDuration = 0})
      : _amplitudeHistory = amplitudeHistory;

  @override
  @JsonKey()
  final RecordStatus status;
  @override
  final String? audioPath;
  @override
  final String? errorText;
  final List<double> _amplitudeHistory;
  @override
  @JsonKey()
  List<double> get amplitudeHistory {
    if (_amplitudeHistory is EqualUnmodifiableListView)
      return _amplitudeHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amplitudeHistory);
  }

  @override
  @JsonKey()
  final int recordingDuration;

  @override
  String toString() {
    return 'RecordState(status: $status, audioPath: $audioPath, errorText: $errorText, amplitudeHistory: $amplitudeHistory, recordingDuration: $recordingDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            const DeepCollectionEquality()
                .equals(other._amplitudeHistory, _amplitudeHistory) &&
            (identical(other.recordingDuration, recordingDuration) ||
                other.recordingDuration == recordingDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      audioPath,
      errorText,
      const DeepCollectionEquality().hash(_amplitudeHistory),
      recordingDuration);

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
      {final RecordStatus status,
      final String? audioPath,
      final String? errorText,
      final List<double> amplitudeHistory,
      final int recordingDuration}) = _$RecordStateImpl;

  @override
  RecordStatus get status;
  @override
  String? get audioPath;
  @override
  String? get errorText;
  @override
  List<double> get amplitudeHistory;
  @override
  int get recordingDuration;

  /// Create a copy of RecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordStateImplCopyWith<_$RecordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
