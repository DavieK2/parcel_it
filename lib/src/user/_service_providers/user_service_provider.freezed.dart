// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_service_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserServiceProviderTearOff {
  const _$UserServiceProviderTearOff();

  _Firestore firestore() {
    return const _Firestore();
  }
}

/// @nodoc
const $UserServiceProvider = _$UserServiceProviderTearOff();

/// @nodoc
mixin _$UserServiceProvider {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? firestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firestore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Firestore value) firestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Firestore value)? firestore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Firestore value)? firestore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserServiceProviderCopyWith<$Res> {
  factory $UserServiceProviderCopyWith(
          UserServiceProvider value, $Res Function(UserServiceProvider) then) =
      _$UserServiceProviderCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserServiceProviderCopyWithImpl<$Res>
    implements $UserServiceProviderCopyWith<$Res> {
  _$UserServiceProviderCopyWithImpl(this._value, this._then);

  final UserServiceProvider _value;
  // ignore: unused_field
  final $Res Function(UserServiceProvider) _then;
}

/// @nodoc
abstract class _$FirestoreCopyWith<$Res> {
  factory _$FirestoreCopyWith(
          _Firestore value, $Res Function(_Firestore) then) =
      __$FirestoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$FirestoreCopyWithImpl<$Res>
    extends _$UserServiceProviderCopyWithImpl<$Res>
    implements _$FirestoreCopyWith<$Res> {
  __$FirestoreCopyWithImpl(_Firestore _value, $Res Function(_Firestore) _then)
      : super(_value, (v) => _then(v as _Firestore));

  @override
  _Firestore get _value => super._value as _Firestore;
}

/// @nodoc

class _$_Firestore implements _Firestore {
  const _$_Firestore();

  @override
  String toString() {
    return 'UserServiceProvider.firestore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Firestore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firestore,
  }) {
    return firestore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? firestore,
  }) {
    return firestore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firestore,
    required TResult orElse(),
  }) {
    if (firestore != null) {
      return firestore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Firestore value) firestore,
  }) {
    return firestore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Firestore value)? firestore,
  }) {
    return firestore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Firestore value)? firestore,
    required TResult orElse(),
  }) {
    if (firestore != null) {
      return firestore(this);
    }
    return orElse();
  }
}

abstract class _Firestore implements UserServiceProvider {
  const factory _Firestore() = _$_Firestore;
}
