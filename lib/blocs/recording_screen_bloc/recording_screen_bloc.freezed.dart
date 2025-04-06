// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recording_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecordingScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath) toPlay,
    required TResult Function() toRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath)? toPlay,
    TResult? Function()? toRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath)? toPlay,
    TResult Function()? toRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPlay value) toPlay,
    required TResult Function(_ToRecord value) toRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToPlay value)? toPlay,
    TResult? Function(_ToRecord value)? toRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPlay value)? toPlay,
    TResult Function(_ToRecord value)? toRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingScreenEventCopyWith<$Res> {
  factory $RecordingScreenEventCopyWith(RecordingScreenEvent value,
          $Res Function(RecordingScreenEvent) then) =
      _$RecordingScreenEventCopyWithImpl<$Res, RecordingScreenEvent>;
}

/// @nodoc
class _$RecordingScreenEventCopyWithImpl<$Res,
        $Val extends RecordingScreenEvent>
    implements $RecordingScreenEventCopyWith<$Res> {
  _$RecordingScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ToPlayImplCopyWith<$Res> {
  factory _$$ToPlayImplCopyWith(
          _$ToPlayImpl value, $Res Function(_$ToPlayImpl) then) =
      __$$ToPlayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String audioPath});
}

/// @nodoc
class __$$ToPlayImplCopyWithImpl<$Res>
    extends _$RecordingScreenEventCopyWithImpl<$Res, _$ToPlayImpl>
    implements _$$ToPlayImplCopyWith<$Res> {
  __$$ToPlayImplCopyWithImpl(
      _$ToPlayImpl _value, $Res Function(_$ToPlayImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioPath = null,
  }) {
    return _then(_$ToPlayImpl(
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToPlayImpl implements _ToPlay {
  const _$ToPlayImpl({required this.audioPath});

  @override
  final String audioPath;

  @override
  String toString() {
    return 'RecordingScreenEvent.toPlay(audioPath: $audioPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToPlayImpl &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, audioPath);

  /// Create a copy of RecordingScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToPlayImplCopyWith<_$ToPlayImpl> get copyWith =>
      __$$ToPlayImplCopyWithImpl<_$ToPlayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath) toPlay,
    required TResult Function() toRecord,
  }) {
    return toPlay(audioPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath)? toPlay,
    TResult? Function()? toRecord,
  }) {
    return toPlay?.call(audioPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath)? toPlay,
    TResult Function()? toRecord,
    required TResult orElse(),
  }) {
    if (toPlay != null) {
      return toPlay(audioPath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPlay value) toPlay,
    required TResult Function(_ToRecord value) toRecord,
  }) {
    return toPlay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToPlay value)? toPlay,
    TResult? Function(_ToRecord value)? toRecord,
  }) {
    return toPlay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPlay value)? toPlay,
    TResult Function(_ToRecord value)? toRecord,
    required TResult orElse(),
  }) {
    if (toPlay != null) {
      return toPlay(this);
    }
    return orElse();
  }
}

abstract class _ToPlay implements RecordingScreenEvent {
  const factory _ToPlay({required final String audioPath}) = _$ToPlayImpl;

  String get audioPath;

  /// Create a copy of RecordingScreenEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToPlayImplCopyWith<_$ToPlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToRecordImplCopyWith<$Res> {
  factory _$$ToRecordImplCopyWith(
          _$ToRecordImpl value, $Res Function(_$ToRecordImpl) then) =
      __$$ToRecordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToRecordImplCopyWithImpl<$Res>
    extends _$RecordingScreenEventCopyWithImpl<$Res, _$ToRecordImpl>
    implements _$$ToRecordImplCopyWith<$Res> {
  __$$ToRecordImplCopyWithImpl(
      _$ToRecordImpl _value, $Res Function(_$ToRecordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToRecordImpl implements _ToRecord {
  const _$ToRecordImpl();

  @override
  String toString() {
    return 'RecordingScreenEvent.toRecord()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToRecordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String audioPath) toPlay,
    required TResult Function() toRecord,
  }) {
    return toRecord();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String audioPath)? toPlay,
    TResult? Function()? toRecord,
  }) {
    return toRecord?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String audioPath)? toPlay,
    TResult Function()? toRecord,
    required TResult orElse(),
  }) {
    if (toRecord != null) {
      return toRecord();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPlay value) toPlay,
    required TResult Function(_ToRecord value) toRecord,
  }) {
    return toRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ToPlay value)? toPlay,
    TResult? Function(_ToRecord value)? toRecord,
  }) {
    return toRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPlay value)? toPlay,
    TResult Function(_ToRecord value)? toRecord,
    required TResult orElse(),
  }) {
    if (toRecord != null) {
      return toRecord(this);
    }
    return orElse();
  }
}

abstract class _ToRecord implements RecordingScreenEvent {
  const factory _ToRecord() = _$ToRecordImpl;
}

/// @nodoc
mixin _$RecordingScreenState {
  RecordingScreenStatus get status => throw _privateConstructorUsedError;
  String get audioPath => throw _privateConstructorUsedError;

  /// Create a copy of RecordingScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordingScreenStateCopyWith<RecordingScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordingScreenStateCopyWith<$Res> {
  factory $RecordingScreenStateCopyWith(RecordingScreenState value,
          $Res Function(RecordingScreenState) then) =
      _$RecordingScreenStateCopyWithImpl<$Res, RecordingScreenState>;
  @useResult
  $Res call({RecordingScreenStatus status, String audioPath});
}

/// @nodoc
class _$RecordingScreenStateCopyWithImpl<$Res,
        $Val extends RecordingScreenState>
    implements $RecordingScreenStateCopyWith<$Res> {
  _$RecordingScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordingScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? audioPath = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingScreenStatus,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordingScreenStateImplCopyWith<$Res>
    implements $RecordingScreenStateCopyWith<$Res> {
  factory _$$RecordingScreenStateImplCopyWith(_$RecordingScreenStateImpl value,
          $Res Function(_$RecordingScreenStateImpl) then) =
      __$$RecordingScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecordingScreenStatus status, String audioPath});
}

/// @nodoc
class __$$RecordingScreenStateImplCopyWithImpl<$Res>
    extends _$RecordingScreenStateCopyWithImpl<$Res, _$RecordingScreenStateImpl>
    implements _$$RecordingScreenStateImplCopyWith<$Res> {
  __$$RecordingScreenStateImplCopyWithImpl(_$RecordingScreenStateImpl _value,
      $Res Function(_$RecordingScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordingScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? audioPath = null,
  }) {
    return _then(_$RecordingScreenStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordingScreenStatus,
      audioPath: null == audioPath
          ? _value.audioPath
          : audioPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecordingScreenStateImpl implements _RecordingScreenState {
  const _$RecordingScreenStateImpl(
      {this.status = RecordingScreenStatus.record, this.audioPath = ''});

  @override
  @JsonKey()
  final RecordingScreenStatus status;
  @override
  @JsonKey()
  final String audioPath;

  @override
  String toString() {
    return 'RecordingScreenState(status: $status, audioPath: $audioPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordingScreenStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.audioPath, audioPath) ||
                other.audioPath == audioPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, audioPath);

  /// Create a copy of RecordingScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordingScreenStateImplCopyWith<_$RecordingScreenStateImpl>
      get copyWith =>
          __$$RecordingScreenStateImplCopyWithImpl<_$RecordingScreenStateImpl>(
              this, _$identity);
}

abstract class _RecordingScreenState implements RecordingScreenState {
  const factory _RecordingScreenState(
      {final RecordingScreenStatus status,
      final String audioPath}) = _$RecordingScreenStateImpl;

  @override
  RecordingScreenStatus get status;
  @override
  String get audioPath;

  /// Create a copy of RecordingScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordingScreenStateImplCopyWith<_$RecordingScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
