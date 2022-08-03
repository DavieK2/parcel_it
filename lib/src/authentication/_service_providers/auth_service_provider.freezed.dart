// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_service_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthServiceProviderTearOff {
  const _$AuthServiceProviderTearOff();

  _FireBase firebase() {
    return const _FireBase();
  }
}

/// @nodoc
const $AuthServiceProvider = _$AuthServiceProviderTearOff();

/// @nodoc
mixin _$AuthServiceProvider {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? firebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firebase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FireBase value) firebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FireBase value)? firebase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FireBase value)? firebase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthServiceProviderCopyWith<$Res> {
  factory $AuthServiceProviderCopyWith(
          AuthServiceProvider value, $Res Function(AuthServiceProvider) then) =
      _$AuthServiceProviderCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthServiceProviderCopyWithImpl<$Res>
    implements $AuthServiceProviderCopyWith<$Res> {
  _$AuthServiceProviderCopyWithImpl(this._value, this._then);

  final AuthServiceProvider _value;
  // ignore: unused_field
  final $Res Function(AuthServiceProvider) _then;
}

/// @nodoc
abstract class _$FireBaseCopyWith<$Res> {
  factory _$FireBaseCopyWith(_FireBase value, $Res Function(_FireBase) then) =
      __$FireBaseCopyWithImpl<$Res>;
}

/// @nodoc
class __$FireBaseCopyWithImpl<$Res>
    extends _$AuthServiceProviderCopyWithImpl<$Res>
    implements _$FireBaseCopyWith<$Res> {
  __$FireBaseCopyWithImpl(_FireBase _value, $Res Function(_FireBase) _then)
      : super(_value, (v) => _then(v as _FireBase));

  @override
  _FireBase get _value => super._value as _FireBase;
}

/// @nodoc

class _$_FireBase implements _FireBase {
  const _$_FireBase();

  @override
  String toString() {
    return 'AuthServiceProvider.firebase()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FireBase);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() firebase,
  }) {
    return firebase();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? firebase,
  }) {
    return firebase?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? firebase,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FireBase value) firebase,
  }) {
    return firebase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FireBase value)? firebase,
  }) {
    return firebase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FireBase value)? firebase,
    required TResult orElse(),
  }) {
    if (firebase != null) {
      return firebase(this);
    }
    return orElse();
  }
}

abstract class _FireBase implements AuthServiceProvider {
  const factory _FireBase() = _$_FireBase;
}
