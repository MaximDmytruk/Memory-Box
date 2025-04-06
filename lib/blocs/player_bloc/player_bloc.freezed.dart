// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath) playAudio,
    required TResult Function() stopPlaying,
    required TResult Function(double position) seekToPosition,
    required TResult Function() pauseAudio,
    required TResult Function(String audioPath) getAudioDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath)? playAudio,
    TResult? Function()? stopPlaying,
    TResult? Function(double position)? seekToPosition,
    TResult? Function()? pauseAudio,
    TResult? Function(String audioPath)? getAudioDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath)? playAudio,
    TResult Function()? stopPlaying,
    TResult Function(double position)? seekToPosition,
    TResult Function()? pauseAudio,
    TResult Function(String audioPath)? getAudioDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_StopPlaying value) stopPlaying,
    required TResult Function(_SeekToPosition value) seekToPosition,
    required TResult Function(_PauseAudio value) pauseAudio,
    required TResult Function(_GetAudioDuration value) getAudioDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_StopPlaying value)? stopPlaying,
    TResult? Function(_SeekToPosition value)? seekToPosition,
    TResult? Function(_PauseAudio value)? pauseAudio,
    TResult? Function(_GetAudioDuration value)? getAudioDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_StopPlaying value)? stopPlaying,
    TResult Function(_SeekToPosition value)? seekToPosition,
    TResult Function(_PauseAudio value)? pauseAudio,
    TResult Function(_GetAudioDuration value)? getAudioDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
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
    extends _$PlayerEventCopyWithImpl<$Res, _$PlayAudioImpl>
    implements _$$PlayAudioImplCopyWith<$Res> {
  __$$PlayAudioImplCopyWithImpl(
      _$PlayAudioImpl _value, $Res Function(_$PlayAudioImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
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
    return 'PlayerEvent.playAudio(audioPath: $audioPath)';
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

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayAudioImplCopyWith<_$PlayAudioImpl> get copyWith =>
      __$$PlayAudioImplCopyWithImpl<_$PlayAudioImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath) playAudio,
    required TResult Function() stopPlaying,
    required TResult Function(double position) seekToPosition,
    required TResult Function() pauseAudio,
    required TResult Function(String audioPath) getAudioDuration,
  }) {
    return playAudio(audioPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath)? playAudio,
    TResult? Function()? stopPlaying,
    TResult? Function(double position)? seekToPosition,
    TResult? Function()? pauseAudio,
    TResult? Function(String audioPath)? getAudioDuration,
  }) {
    return playAudio?.call(audioPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath)? playAudio,
    TResult Function()? stopPlaying,
    TResult Function(double position)? seekToPosition,
    TResult Function()? pauseAudio,
    TResult Function(String audioPath)? getAudioDuration,
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
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_StopPlaying value) stopPlaying,
    required TResult Function(_SeekToPosition value) seekToPosition,
    required TResult Function(_PauseAudio value) pauseAudio,
    required TResult Function(_GetAudioDuration value) getAudioDuration,
  }) {
    return playAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_StopPlaying value)? stopPlaying,
    TResult? Function(_SeekToPosition value)? seekToPosition,
    TResult? Function(_PauseAudio value)? pauseAudio,
    TResult? Function(_GetAudioDuration value)? getAudioDuration,
  }) {
    return playAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_StopPlaying value)? stopPlaying,
    TResult Function(_SeekToPosition value)? seekToPosition,
    TResult Function(_PauseAudio value)? pauseAudio,
    TResult Function(_GetAudioDuration value)? getAudioDuration,
    required TResult orElse(),
  }) {
    if (playAudio != null) {
      return playAudio(this);
    }
    return orElse();
  }
}

abstract class _PlayAudio implements PlayerEvent {
  const factory _PlayAudio({required final String audioPath}) = _$PlayAudioImpl;

  String get audioPath;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayAudioImplCopyWith<_$PlayAudioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopPlayingImplCopyWith<$Res> {
  factory _$$StopPlayingImplCopyWith(
          _$StopPlayingImpl value, $Res Function(_$StopPlayingImpl) then) =
      __$$StopPlayingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopPlayingImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$StopPlayingImpl>
    implements _$$StopPlayingImplCopyWith<$Res> {
  __$$StopPlayingImplCopyWithImpl(
      _$StopPlayingImpl _value, $Res Function(_$StopPlayingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopPlayingImpl implements _StopPlaying {
  const _$StopPlayingImpl();

  @override
  String toString() {
    return 'PlayerEvent.stopPlaying()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopPlayingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath) playAudio,
    required TResult Function() stopPlaying,
    required TResult Function(double position) seekToPosition,
    required TResult Function() pauseAudio,
    required TResult Function(String audioPath) getAudioDuration,
  }) {
    return stopPlaying();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath)? playAudio,
    TResult? Function()? stopPlaying,
    TResult? Function(double position)? seekToPosition,
    TResult? Function()? pauseAudio,
    TResult? Function(String audioPath)? getAudioDuration,
  }) {
    return stopPlaying?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath)? playAudio,
    TResult Function()? stopPlaying,
    TResult Function(double position)? seekToPosition,
    TResult Function()? pauseAudio,
    TResult Function(String audioPath)? getAudioDuration,
    required TResult orElse(),
  }) {
    if (stopPlaying != null) {
      return stopPlaying();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_StopPlaying value) stopPlaying,
    required TResult Function(_SeekToPosition value) seekToPosition,
    required TResult Function(_PauseAudio value) pauseAudio,
    required TResult Function(_GetAudioDuration value) getAudioDuration,
  }) {
    return stopPlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_StopPlaying value)? stopPlaying,
    TResult? Function(_SeekToPosition value)? seekToPosition,
    TResult? Function(_PauseAudio value)? pauseAudio,
    TResult? Function(_GetAudioDuration value)? getAudioDuration,
  }) {
    return stopPlaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_StopPlaying value)? stopPlaying,
    TResult Function(_SeekToPosition value)? seekToPosition,
    TResult Function(_PauseAudio value)? pauseAudio,
    TResult Function(_GetAudioDuration value)? getAudioDuration,
    required TResult orElse(),
  }) {
    if (stopPlaying != null) {
      return stopPlaying(this);
    }
    return orElse();
  }
}

abstract class _StopPlaying implements PlayerEvent {
  const factory _StopPlaying() = _$StopPlayingImpl;
}

/// @nodoc
abstract class _$$SeekToPositionImplCopyWith<$Res> {
  factory _$$SeekToPositionImplCopyWith(_$SeekToPositionImpl value,
          $Res Function(_$SeekToPositionImpl) then) =
      __$$SeekToPositionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double position});
}

/// @nodoc
class __$$SeekToPositionImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$SeekToPositionImpl>
    implements _$$SeekToPositionImplCopyWith<$Res> {
  __$$SeekToPositionImplCopyWithImpl(
      _$SeekToPositionImpl _value, $Res Function(_$SeekToPositionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$SeekToPositionImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SeekToPositionImpl implements _SeekToPosition {
  const _$SeekToPositionImpl(this.position);

  @override
  final double position;

  @override
  String toString() {
    return 'PlayerEvent.seekToPosition(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeekToPositionImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeekToPositionImplCopyWith<_$SeekToPositionImpl> get copyWith =>
      __$$SeekToPositionImplCopyWithImpl<_$SeekToPositionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath) playAudio,
    required TResult Function() stopPlaying,
    required TResult Function(double position) seekToPosition,
    required TResult Function() pauseAudio,
    required TResult Function(String audioPath) getAudioDuration,
  }) {
    return seekToPosition(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath)? playAudio,
    TResult? Function()? stopPlaying,
    TResult? Function(double position)? seekToPosition,
    TResult? Function()? pauseAudio,
    TResult? Function(String audioPath)? getAudioDuration,
  }) {
    return seekToPosition?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath)? playAudio,
    TResult Function()? stopPlaying,
    TResult Function(double position)? seekToPosition,
    TResult Function()? pauseAudio,
    TResult Function(String audioPath)? getAudioDuration,
    required TResult orElse(),
  }) {
    if (seekToPosition != null) {
      return seekToPosition(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_StopPlaying value) stopPlaying,
    required TResult Function(_SeekToPosition value) seekToPosition,
    required TResult Function(_PauseAudio value) pauseAudio,
    required TResult Function(_GetAudioDuration value) getAudioDuration,
  }) {
    return seekToPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_StopPlaying value)? stopPlaying,
    TResult? Function(_SeekToPosition value)? seekToPosition,
    TResult? Function(_PauseAudio value)? pauseAudio,
    TResult? Function(_GetAudioDuration value)? getAudioDuration,
  }) {
    return seekToPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_StopPlaying value)? stopPlaying,
    TResult Function(_SeekToPosition value)? seekToPosition,
    TResult Function(_PauseAudio value)? pauseAudio,
    TResult Function(_GetAudioDuration value)? getAudioDuration,
    required TResult orElse(),
  }) {
    if (seekToPosition != null) {
      return seekToPosition(this);
    }
    return orElse();
  }
}

abstract class _SeekToPosition implements PlayerEvent {
  const factory _SeekToPosition(final double position) = _$SeekToPositionImpl;

  double get position;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeekToPositionImplCopyWith<_$SeekToPositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseAudioImplCopyWith<$Res> {
  factory _$$PauseAudioImplCopyWith(
          _$PauseAudioImpl value, $Res Function(_$PauseAudioImpl) then) =
      __$$PauseAudioImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseAudioImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PauseAudioImpl>
    implements _$$PauseAudioImplCopyWith<$Res> {
  __$$PauseAudioImplCopyWithImpl(
      _$PauseAudioImpl _value, $Res Function(_$PauseAudioImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PauseAudioImpl implements _PauseAudio {
  const _$PauseAudioImpl();

  @override
  String toString() {
    return 'PlayerEvent.pauseAudio()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseAudioImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath) playAudio,
    required TResult Function() stopPlaying,
    required TResult Function(double position) seekToPosition,
    required TResult Function() pauseAudio,
    required TResult Function(String audioPath) getAudioDuration,
  }) {
    return pauseAudio();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath)? playAudio,
    TResult? Function()? stopPlaying,
    TResult? Function(double position)? seekToPosition,
    TResult? Function()? pauseAudio,
    TResult? Function(String audioPath)? getAudioDuration,
  }) {
    return pauseAudio?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath)? playAudio,
    TResult Function()? stopPlaying,
    TResult Function(double position)? seekToPosition,
    TResult Function()? pauseAudio,
    TResult Function(String audioPath)? getAudioDuration,
    required TResult orElse(),
  }) {
    if (pauseAudio != null) {
      return pauseAudio();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_StopPlaying value) stopPlaying,
    required TResult Function(_SeekToPosition value) seekToPosition,
    required TResult Function(_PauseAudio value) pauseAudio,
    required TResult Function(_GetAudioDuration value) getAudioDuration,
  }) {
    return pauseAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_StopPlaying value)? stopPlaying,
    TResult? Function(_SeekToPosition value)? seekToPosition,
    TResult? Function(_PauseAudio value)? pauseAudio,
    TResult? Function(_GetAudioDuration value)? getAudioDuration,
  }) {
    return pauseAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_StopPlaying value)? stopPlaying,
    TResult Function(_SeekToPosition value)? seekToPosition,
    TResult Function(_PauseAudio value)? pauseAudio,
    TResult Function(_GetAudioDuration value)? getAudioDuration,
    required TResult orElse(),
  }) {
    if (pauseAudio != null) {
      return pauseAudio(this);
    }
    return orElse();
  }
}

abstract class _PauseAudio implements PlayerEvent {
  const factory _PauseAudio() = _$PauseAudioImpl;
}

/// @nodoc
abstract class _$$GetAudioDurationImplCopyWith<$Res> {
  factory _$$GetAudioDurationImplCopyWith(_$GetAudioDurationImpl value,
          $Res Function(_$GetAudioDurationImpl) then) =
      __$$GetAudioDurationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String audioPath});
}

/// @nodoc
class __$$GetAudioDurationImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$GetAudioDurationImpl>
    implements _$$GetAudioDurationImplCopyWith<$Res> {
  __$$GetAudioDurationImplCopyWithImpl(_$GetAudioDurationImpl _value,
      $Res Function(_$GetAudioDurationImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = null,
  }) {
    return _then(_$GetAudioDurationImpl(
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAudioDurationImpl implements _GetAudioDuration {
  const _$GetAudioDurationImpl({required this.audioPath});

  @override
  final String audioPath;

  @override
  String toString() {
    return 'PlayerEvent.getAudioDuration(audioPath: $audioPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAudioDurationImpl &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioPath);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAudioDurationImplCopyWith<_$GetAudioDurationImpl> get copyWith =>
      __$$GetAudioDurationImplCopyWithImpl<_$GetAudioDurationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath) playAudio,
    required TResult Function() stopPlaying,
    required TResult Function(double position) seekToPosition,
    required TResult Function() pauseAudio,
    required TResult Function(String audioPath) getAudioDuration,
  }) {
    return getAudioDuration(audioPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath)? playAudio,
    TResult? Function()? stopPlaying,
    TResult? Function(double position)? seekToPosition,
    TResult? Function()? pauseAudio,
    TResult? Function(String audioPath)? getAudioDuration,
  }) {
    return getAudioDuration?.call(audioPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath)? playAudio,
    TResult Function()? stopPlaying,
    TResult Function(double position)? seekToPosition,
    TResult Function()? pauseAudio,
    TResult Function(String audioPath)? getAudioDuration,
    required TResult orElse(),
  }) {
    if (getAudioDuration != null) {
      return getAudioDuration(audioPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayAudio value) playAudio,
    required TResult Function(_StopPlaying value) stopPlaying,
    required TResult Function(_SeekToPosition value) seekToPosition,
    required TResult Function(_PauseAudio value) pauseAudio,
    required TResult Function(_GetAudioDuration value) getAudioDuration,
  }) {
    return getAudioDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayAudio value)? playAudio,
    TResult? Function(_StopPlaying value)? stopPlaying,
    TResult? Function(_SeekToPosition value)? seekToPosition,
    TResult? Function(_PauseAudio value)? pauseAudio,
    TResult? Function(_GetAudioDuration value)? getAudioDuration,
  }) {
    return getAudioDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayAudio value)? playAudio,
    TResult Function(_StopPlaying value)? stopPlaying,
    TResult Function(_SeekToPosition value)? seekToPosition,
    TResult Function(_PauseAudio value)? pauseAudio,
    TResult Function(_GetAudioDuration value)? getAudioDuration,
    required TResult orElse(),
  }) {
    if (getAudioDuration != null) {
      return getAudioDuration(this);
    }
    return orElse();
  }
}

abstract class _GetAudioDuration implements PlayerEvent {
  const factory _GetAudioDuration({required final String audioPath}) =
      _$GetAudioDurationImpl;

  String get audioPath;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAudioDurationImplCopyWith<_$GetAudioDurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayerState {
  PlayerStatus get status => throw _privateConstructorUsedError;
  bool get playing => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;
  String? get errorText => throw _privateConstructorUsedError;
  double? get audioPosition => throw _privateConstructorUsedError;
  double? get audioDuration => throw _privateConstructorUsedError;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerStateCopyWith<PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
  @useResult
  $Res call(
      {PlayerStatus status,
      bool playing,
      String? audio,
      String? errorText,
      double? audioPosition,
      double? audioDuration});
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? playing = null,
    Object? audio = freezed,
    Object? errorText = freezed,
    Object? audioPosition = freezed,
    Object? audioDuration = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlayerStatus,
      playing: null == playing
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      audioPosition: freezed == audioPosition
          ? _value.audioPosition
          : audioPosition // ignore: cast_nullable_to_non_nullable
              as double?,
      audioDuration: freezed == audioDuration
          ? _value.audioDuration
          : audioDuration // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerStateImplCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$$PlayerStateImplCopyWith(
          _$PlayerStateImpl value, $Res Function(_$PlayerStateImpl) then) =
      __$$PlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlayerStatus status,
      bool playing,
      String? audio,
      String? errorText,
      double? audioPosition,
      double? audioDuration});
}

/// @nodoc
class __$$PlayerStateImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateImpl>
    implements _$$PlayerStateImplCopyWith<$Res> {
  __$$PlayerStateImplCopyWithImpl(
      _$PlayerStateImpl _value, $Res Function(_$PlayerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? playing = null,
    Object? audio = freezed,
    Object? errorText = freezed,
    Object? audioPosition = freezed,
    Object? audioDuration = freezed,
  }) {
    return _then(_$PlayerStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlayerStatus,
      playing: null == playing
          ? _value.playing
          : playing // ignore: cast_nullable_to_non_nullable
              as bool,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      audioPosition: freezed == audioPosition
          ? _value.audioPosition
          : audioPosition // ignore: cast_nullable_to_non_nullable
              as double?,
      audioDuration: freezed == audioDuration
          ? _value.audioDuration
          : audioDuration // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$PlayerStateImpl implements _PlayerState {
  const _$PlayerStateImpl(
      {this.status = PlayerStatus.initial,
      this.playing = false,
      this.audio,
      this.errorText,
      this.audioPosition,
      this.audioDuration});

  @override
  @JsonKey()
  final PlayerStatus status;
  @override
  @JsonKey()
  final bool playing;
  @override
  final String? audio;
  @override
  final String? errorText;
  @override
  final double? audioPosition;
  @override
  final double? audioDuration;

  @override
  String toString() {
    return 'PlayerState(status: $status, playing: $playing, audio: $audio, errorText: $errorText, audioPosition: $audioPosition, audioDuration: $audioDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.playing, playing) || other.playing == playing) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.audioPosition, audioPosition) ||
                other.audioPosition == audioPosition) &&
            (identical(other.audioDuration, audioDuration) ||
                other.audioDuration == audioDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, playing, audio,
      errorText, audioPosition, audioDuration);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      __$$PlayerStateImplCopyWithImpl<_$PlayerStateImpl>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState(
      {final PlayerStatus status,
      final bool playing,
      final String? audio,
      final String? errorText,
      final double? audioPosition,
      final double? audioDuration}) = _$PlayerStateImpl;

  @override
  PlayerStatus get status;
  @override
  bool get playing;
  @override
  String? get audio;
  @override
  String? get errorText;
  @override
  double? get audioPosition;
  @override
  double? get audioDuration;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
