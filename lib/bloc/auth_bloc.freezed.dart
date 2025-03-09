// // dart format width=80
// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

// part of 'auth_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// // dart format off
// T _$identity<T>(T value) => value;

// /// @nodoc
// mixin _$AuthEvent {
//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is AuthEvent);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   String toString() {
//     return 'AuthEvent()';
//   }
// }

// /// @nodoc
// class $AuthEventCopyWith<$Res> {
//   $AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
// }

// /// @nodoc

// class _LoginRequested implements AuthEvent {
//   const _LoginRequested({required this.email, required this.password});

//   final String email;
//   final String password;

//   /// Create a copy of AuthEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @pragma('vm:prefer-inline')
//   _$LoginRequestedCopyWith<_LoginRequested> get copyWith =>
//       __$LoginRequestedCopyWithImpl<_LoginRequested>(this, _$identity);

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _LoginRequested &&
//             (identical(other.email, email) || other.email == email) &&
//             (identical(other.password, password) ||
//                 other.password == password));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, email, password);

//   @override
//   String toString() {
//     return 'AuthEvent.loginRequested(email: $email, password: $password)';
//   }
// }

// /// @nodoc
// abstract mixin class _$LoginRequestedCopyWith<$Res>
//     implements $AuthEventCopyWith<$Res> {
//   factory _$LoginRequestedCopyWith(
//           _LoginRequested value, $Res Function(_LoginRequested) _then) =
//       __$LoginRequestedCopyWithImpl;
//   @useResult
//   $Res call({String email, String password});
// }

// /// @nodoc
// class __$LoginRequestedCopyWithImpl<$Res>
//     implements _$LoginRequestedCopyWith<$Res> {
//   __$LoginRequestedCopyWithImpl(this._self, this._then);

//   final _LoginRequested _self;
//   final $Res Function(_LoginRequested) _then;

//   /// Create a copy of AuthEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   $Res call({
//     Object? email = null,
//     Object? password = null,
//   }) {
//     return _then(_LoginRequested(
//       email: null == email
//           ? _self.email
//           : email // ignore: cast_nullable_to_non_nullable
//               as String,
//       password: null == password
//           ? _self.password
//           : password // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc

// class _LogoutRequested implements AuthEvent {
//   const _LogoutRequested();

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType && other is _LogoutRequested);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   String toString() {
//     return 'AuthEvent.logoutRequested()';
//   }
// }

// /// @nodoc

// class _RegisterUser implements AuthEvent {
//   const _RegisterUser(
//       {required this.email, required this.password, required this.name});

//   final String email;
//   final String password;
//   final String name;

//   /// Create a copy of AuthEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @pragma('vm:prefer-inline')
//   _$RegisterUserCopyWith<_RegisterUser> get copyWith =>
//       __$RegisterUserCopyWithImpl<_RegisterUser>(this, _$identity);

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _RegisterUser &&
//             (identical(other.email, email) || other.email == email) &&
//             (identical(other.password, password) ||
//                 other.password == password) &&
//             (identical(other.name, name) || other.name == name));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, email, password, name);

//   @override
//   String toString() {
//     return 'AuthEvent.registerUser(email: $email, password: $password, name: $name)';
//   }
// }

// /// @nodoc
// abstract mixin class _$RegisterUserCopyWith<$Res>
//     implements $AuthEventCopyWith<$Res> {
//   factory _$RegisterUserCopyWith(
//           _RegisterUser value, $Res Function(_RegisterUser) _then) =
//       __$RegisterUserCopyWithImpl;
//   @useResult
//   $Res call({String email, String password, String name});
// }

// /// @nodoc
// class __$RegisterUserCopyWithImpl<$Res>
//     implements _$RegisterUserCopyWith<$Res> {
//   __$RegisterUserCopyWithImpl(this._self, this._then);

//   final _RegisterUser _self;
//   final $Res Function(_RegisterUser) _then;

//   /// Create a copy of AuthEvent
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   $Res call({
//     Object? email = null,
//     Object? password = null,
//     Object? name = null,
//   }) {
//     return _then(_RegisterUser(
//       email: null == email
//           ? _self.email
//           : email // ignore: cast_nullable_to_non_nullable
//               as String,
//       password: null == password
//           ? _self.password
//           : password // ignore: cast_nullable_to_non_nullable
//               as String,
//       name: null == name
//           ? _self.name
//           : name // ignore: cast_nullable_to_non_nullable
//               as String,
//     ));
//   }
// }

// /// @nodoc
// mixin _$AuthState {
//   AuthStatus get status;
//   String? get errorText;

//   /// Create a copy of AuthState
//   /// with the given fields replaced by the non-null parameter values.
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @pragma('vm:prefer-inline')
//   $AuthStateCopyWith<AuthState> get copyWith =>
//       _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is AuthState &&
//             (identical(other.status, status) || other.status == status) &&
//             (identical(other.errorText, errorText) ||
//                 other.errorText == errorText));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, status, errorText);

//   @override
//   String toString() {
//     return 'AuthState(status: $status, errorText: $errorText)';
//   }
// }

// /// @nodoc
// abstract mixin class $AuthStateCopyWith<$Res> {
//   factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) =
//       _$AuthStateCopyWithImpl;
//   @useResult
//   $Res call({AuthStatus status, String? errorText});
// }

// /// @nodoc
// class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
//   _$AuthStateCopyWithImpl(this._self, this._then);

//   final AuthState _self;
//   final $Res Function(AuthState) _then;

//   /// Create a copy of AuthState
//   /// with the given fields replaced by the non-null parameter values.
//   @pragma('vm:prefer-inline')
//   @override
//   $Res call({
//     Object? status = null,
//     Object? errorText = freezed,
//   }) {
//     return _then(_self.copyWith(
//       status: null == status
//           ? _self.status
//           : status // ignore: cast_nullable_to_non_nullable
//               as AuthStatus,
//       errorText: freezed == errorText
//           ? _self.errorText
//           : errorText // ignore: cast_nullable_to_non_nullable
//               as String?,
//     ));
//   }
// }

// /// @nodoc

// class _AuthState implements AuthState {
//   const _AuthState({this.status = AuthStatus.initial, this.errorText});

//   @override
//   @JsonKey()
//   final AuthStatus status;
//   @override
//   final String? errorText;

//   /// Create a copy of AuthState
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @JsonKey(includeFromJson: false, includeToJson: false)
//   @pragma('vm:prefer-inline')
//   _$AuthStateCopyWith<_AuthState> get copyWith =>
//       __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _AuthState &&
//             (identical(other.status, status) || other.status == status) &&
//             (identical(other.errorText, errorText) ||
//                 other.errorText == errorText));
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, status, errorText);

//   @override
//   String toString() {
//     return 'AuthState(status: $status, errorText: $errorText)';
//   }
// }

// /// @nodoc
// abstract mixin class _$AuthStateCopyWith<$Res>
//     implements $AuthStateCopyWith<$Res> {
//   factory _$AuthStateCopyWith(
//           _AuthState value, $Res Function(_AuthState) _then) =
//       __$AuthStateCopyWithImpl;
//   @override
//   @useResult
//   $Res call({AuthStatus status, String? errorText});
// }

// /// @nodoc
// class __$AuthStateCopyWithImpl<$Res> implements _$AuthStateCopyWith<$Res> {
//   __$AuthStateCopyWithImpl(this._self, this._then);

//   final _AuthState _self;
//   final $Res Function(_AuthState) _then;

//   /// Create a copy of AuthState
//   /// with the given fields replaced by the non-null parameter values.
//   @override
//   @pragma('vm:prefer-inline')
//   $Res call({
//     Object? status = null,
//     Object? errorText = freezed,
//   }) {
//     return _then(_AuthState(
//       status: null == status
//           ? _self.status
//           : status // ignore: cast_nullable_to_non_nullable
//               as AuthStatus,
//       errorText: freezed == errorText
//           ? _self.errorText
//           : errorText // ignore: cast_nullable_to_non_nullable
//               as String?,
//     ));
//   }
// }

// // dart format on
