// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OTPStreamTearOff {
  const _$OTPStreamTearOff();

  _ReceivedSMS receivedOTPSMS(String otp) {
    return _ReceivedSMS(
      otp,
    );
  }
}

/// @nodoc
const $OTPStream = _$OTPStreamTearOff();

/// @nodoc
mixin _$OTPStream {
  String get otp => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) receivedOTPSMS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? receivedOTPSMS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? receivedOTPSMS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReceivedSMS value) receivedOTPSMS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReceivedSMS value)? receivedOTPSMS,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReceivedSMS value)? receivedOTPSMS,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OTPStreamCopyWith<OTPStream> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPStreamCopyWith<$Res> {
  factory $OTPStreamCopyWith(OTPStream value, $Res Function(OTPStream) then) =
      _$OTPStreamCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class _$OTPStreamCopyWithImpl<$Res> implements $OTPStreamCopyWith<$Res> {
  _$OTPStreamCopyWithImpl(this._value, this._then);

  final OTPStream _value;
  // ignore: unused_field
  final $Res Function(OTPStream) _then;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ReceivedSMSCopyWith<$Res> implements $OTPStreamCopyWith<$Res> {
  factory _$ReceivedSMSCopyWith(
          _ReceivedSMS value, $Res Function(_ReceivedSMS) then) =
      __$ReceivedSMSCopyWithImpl<$Res>;
  @override
  $Res call({String otp});
}

/// @nodoc
class __$ReceivedSMSCopyWithImpl<$Res> extends _$OTPStreamCopyWithImpl<$Res>
    implements _$ReceivedSMSCopyWith<$Res> {
  __$ReceivedSMSCopyWithImpl(
      _ReceivedSMS _value, $Res Function(_ReceivedSMS) _then)
      : super(_value, (v) => _then(v as _ReceivedSMS));

  @override
  _ReceivedSMS get _value => super._value as _ReceivedSMS;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_ReceivedSMS(
      otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReceivedSMS implements _ReceivedSMS {
  const _$_ReceivedSMS(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'OTPStream.receivedOTPSMS(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReceivedSMS &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$ReceivedSMSCopyWith<_ReceivedSMS> get copyWith =>
      __$ReceivedSMSCopyWithImpl<_ReceivedSMS>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) receivedOTPSMS,
  }) {
    return receivedOTPSMS(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? receivedOTPSMS,
  }) {
    return receivedOTPSMS?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? receivedOTPSMS,
    required TResult orElse(),
  }) {
    if (receivedOTPSMS != null) {
      return receivedOTPSMS(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReceivedSMS value) receivedOTPSMS,
  }) {
    return receivedOTPSMS(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReceivedSMS value)? receivedOTPSMS,
  }) {
    return receivedOTPSMS?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReceivedSMS value)? receivedOTPSMS,
    required TResult orElse(),
  }) {
    if (receivedOTPSMS != null) {
      return receivedOTPSMS(this);
    }
    return orElse();
  }
}

abstract class _ReceivedSMS implements OTPStream {
  const factory _ReceivedSMS(String otp) = _$_ReceivedSMS;

  @override
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$ReceivedSMSCopyWith<_ReceivedSMS> get copyWith =>
      throw _privateConstructorUsedError;
}
