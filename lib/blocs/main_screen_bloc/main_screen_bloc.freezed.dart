// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllAudios,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllAudios,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllAudios,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllAudios value) getAllAudios,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllAudios value)? getAllAudios,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllAudios value)? getAllAudios,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenEventCopyWith<$Res> {
  factory $MainScreenEventCopyWith(
          MainScreenEvent value, $Res Function(MainScreenEvent) then) =
      _$MainScreenEventCopyWithImpl<$Res, MainScreenEvent>;
}

/// @nodoc
class _$MainScreenEventCopyWithImpl<$Res, $Val extends MainScreenEvent>
    implements $MainScreenEventCopyWith<$Res> {
  _$MainScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllAudiosImplCopyWith<$Res> {
  factory _$$GetAllAudiosImplCopyWith(
          _$GetAllAudiosImpl value, $Res Function(_$GetAllAudiosImpl) then) =
      __$$GetAllAudiosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllAudiosImplCopyWithImpl<$Res>
    extends _$MainScreenEventCopyWithImpl<$Res, _$GetAllAudiosImpl>
    implements _$$GetAllAudiosImplCopyWith<$Res> {
  __$$GetAllAudiosImplCopyWithImpl(
      _$GetAllAudiosImpl _value, $Res Function(_$GetAllAudiosImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainScreenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetAllAudiosImpl implements _GetAllAudios {
  const _$GetAllAudiosImpl();

  @override
  String toString() {
    return 'MainScreenEvent.getAllAudios()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllAudiosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllAudios,
  }) {
    return getAllAudios();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllAudios,
  }) {
    return getAllAudios?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllAudios,
    required TResult orElse(),
  }) {
    if (getAllAudios != null) {
      return getAllAudios();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllAudios value) getAllAudios,
  }) {
    return getAllAudios(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllAudios value)? getAllAudios,
  }) {
    return getAllAudios?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllAudios value)? getAllAudios,
    required TResult orElse(),
  }) {
    if (getAllAudios != null) {
      return getAllAudios(this);
    }
    return orElse();
  }
}

abstract class _GetAllAudios implements MainScreenEvent {
  const factory _GetAllAudios() = _$GetAllAudiosImpl;
}

/// @nodoc
mixin _$MainScreenState {
  MainScreenStatus get status => throw _privateConstructorUsedError;
  List<String> get audioList => throw _privateConstructorUsedError;

  /// Create a copy of MainScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainScreenStateCopyWith<MainScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainScreenStateCopyWith<$Res> {
  factory $MainScreenStateCopyWith(
          MainScreenState value, $Res Function(MainScreenState) then) =
      _$MainScreenStateCopyWithImpl<$Res, MainScreenState>;
  @useResult
  $Res call({MainScreenStatus status, List<String> audioList});
}

/// @nodoc
class _$MainScreenStateCopyWithImpl<$Res, $Val extends MainScreenState>
    implements $MainScreenStateCopyWith<$Res> {
  _$MainScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? audioList = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MainScreenStatus,
      audioList: null == audioList
          ? _value.audioList
          : audioList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainScreenStateImplCopyWith<$Res>
    implements $MainScreenStateCopyWith<$Res> {
  factory _$$MainScreenStateImplCopyWith(_$MainScreenStateImpl value,
          $Res Function(_$MainScreenStateImpl) then) =
      __$$MainScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainScreenStatus status, List<String> audioList});
}

/// @nodoc
class __$$MainScreenStateImplCopyWithImpl<$Res>
    extends _$MainScreenStateCopyWithImpl<$Res, _$MainScreenStateImpl>
    implements _$$MainScreenStateImplCopyWith<$Res> {
  __$$MainScreenStateImplCopyWithImpl(
      _$MainScreenStateImpl _value, $Res Function(_$MainScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? audioList = null,
  }) {
    return _then(_$MainScreenStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MainScreenStatus,
      audioList: null == audioList
          ? _value._audioList
          : audioList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$MainScreenStateImpl implements _MainScreenState {
  const _$MainScreenStateImpl(
      {this.status = MainScreenStatus.initial,
      final List<String> audioList = const []})
      : _audioList = audioList;

  @override
  @JsonKey()
  final MainScreenStatus status;
  final List<String> _audioList;
  @override
  @JsonKey()
  List<String> get audioList {
    if (_audioList is EqualUnmodifiableListView) return _audioList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioList);
  }

  @override
  String toString() {
    return 'MainScreenState(status: $status, audioList: $audioList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainScreenStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._audioList, _audioList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_audioList));

  /// Create a copy of MainScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainScreenStateImplCopyWith<_$MainScreenStateImpl> get copyWith =>
      __$$MainScreenStateImplCopyWithImpl<_$MainScreenStateImpl>(
          this, _$identity);
}

abstract class _MainScreenState implements MainScreenState {
  const factory _MainScreenState(
      {final MainScreenStatus status,
      final List<String> audioList}) = _$MainScreenStateImpl;

  @override
  MainScreenStatus get status;
  @override
  List<String> get audioList;

  /// Create a copy of MainScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainScreenStateImplCopyWith<_$MainScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
