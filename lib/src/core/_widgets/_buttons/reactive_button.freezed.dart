// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reactive_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReactiveButtonStateTearOff {
  const _$ReactiveButtonStateTearOff();

  _ButtonEnabled buttonEnabled(
      {required String text, VoidCallback? onPressed}) {
    return _ButtonEnabled(
      text: text,
      onPressed: onPressed,
    );
  }

  _ButtonDisabled buttonDisabled(
      {required String text, VoidCallback? onPressed}) {
    return _ButtonDisabled(
      text: text,
      onPressed: onPressed,
    );
  }

  _Loading loading({required String text, VoidCallback? onPressed}) {
    return _Loading(
      text: text,
      onPressed: onPressed,
    );
  }
}

/// @nodoc
const $ReactiveButtonState = _$ReactiveButtonStateTearOff();

/// @nodoc
mixin _$ReactiveButtonState {
  String get text => throw _privateConstructorUsedError;
  VoidCallback? get onPressed => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, VoidCallback? onPressed)
        buttonEnabled,
    required TResult Function(String text, VoidCallback? onPressed)
        buttonDisabled,
    required TResult Function(String text, VoidCallback? onPressed) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, VoidCallback? onPressed)? buttonEnabled,
    TResult Function(String text, VoidCallback? onPressed)? buttonDisabled,
    TResult Function(String text, VoidCallback? onPressed)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, VoidCallback? onPressed)? buttonEnabled,
    TResult Function(String text, VoidCallback? onPressed)? buttonDisabled,
    TResult Function(String text, VoidCallback? onPressed)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonEnabled value) buttonEnabled,
    required TResult Function(_ButtonDisabled value) buttonDisabled,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ButtonEnabled value)? buttonEnabled,
    TResult Function(_ButtonDisabled value)? buttonDisabled,
    TResult Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonEnabled value)? buttonEnabled,
    TResult Function(_ButtonDisabled value)? buttonDisabled,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReactiveButtonStateCopyWith<ReactiveButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactiveButtonStateCopyWith<$Res> {
  factory $ReactiveButtonStateCopyWith(
          ReactiveButtonState value, $Res Function(ReactiveButtonState) then) =
      _$ReactiveButtonStateCopyWithImpl<$Res>;
  $Res call({String text, VoidCallback? onPressed});
}

/// @nodoc
class _$ReactiveButtonStateCopyWithImpl<$Res>
    implements $ReactiveButtonStateCopyWith<$Res> {
  _$ReactiveButtonStateCopyWithImpl(this._value, this._then);

  final ReactiveButtonState _value;
  // ignore: unused_field
  final $Res Function(ReactiveButtonState) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc
abstract class _$ButtonEnabledCopyWith<$Res>
    implements $ReactiveButtonStateCopyWith<$Res> {
  factory _$ButtonEnabledCopyWith(
          _ButtonEnabled value, $Res Function(_ButtonEnabled) then) =
      __$ButtonEnabledCopyWithImpl<$Res>;
  @override
  $Res call({String text, VoidCallback? onPressed});
}

/// @nodoc
class __$ButtonEnabledCopyWithImpl<$Res>
    extends _$ReactiveButtonStateCopyWithImpl<$Res>
    implements _$ButtonEnabledCopyWith<$Res> {
  __$ButtonEnabledCopyWithImpl(
      _ButtonEnabled _value, $Res Function(_ButtonEnabled) _then)
      : super(_value, (v) => _then(v as _ButtonEnabled));

  @override
  _ButtonEnabled get _value => super._value as _ButtonEnabled;

  @override
  $Res call({
    Object? text = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_ButtonEnabled(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$_ButtonEnabled implements _ButtonEnabled {
  const _$_ButtonEnabled({required this.text, this.onPressed});

  @override
  final String text;
  @override
  final VoidCallback? onPressed;

  @override
  String toString() {
    return 'ReactiveButtonState.buttonEnabled(text: $text, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ButtonEnabled &&
            const DeepCollectionEquality().equals(other.text, text) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(text), onPressed);

  @JsonKey(ignore: true)
  @override
  _$ButtonEnabledCopyWith<_ButtonEnabled> get copyWith =>
      __$ButtonEnabledCopyWithImpl<_ButtonEnabled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, VoidCallback? onPressed)
        buttonEnabled,
    required TResult Function(String text, VoidCallback? onPressed)
        buttonDisabled,
    required TResult Function(String text, VoidCallback? onPressed) loading,
  }) {
    return buttonEnabled(text, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, VoidCallback? onPressed)? buttonEnabled,
    TResult Function(String text, VoidCallback? onPressed)? buttonDisabled,
    TResult Function(String text, VoidCallback? onPressed)? loading,
  }) {
    return buttonEnabled?.call(text, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, VoidCallback? onPressed)? buttonEnabled,
    TResult Function(String text, VoidCallback? onPressed)? buttonDisabled,
    TResult Function(String text, VoidCallback? onPressed)? loading,
    required TResult orElse(),
  }) {
    if (buttonEnabled != null) {
      return buttonEnabled(text, onPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonEnabled value) buttonEnabled,
    required TResult Function(_ButtonDisabled value) buttonDisabled,
    required TResult Function(_Loading value) loading,
  }) {
    return buttonEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ButtonEnabled value)? buttonEnabled,
    TResult Function(_ButtonDisabled value)? buttonDisabled,
    TResult Function(_Loading value)? loading,
  }) {
    return buttonEnabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonEnabled value)? buttonEnabled,
    TResult Function(_ButtonDisabled value)? buttonDisabled,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (buttonEnabled != null) {
      return buttonEnabled(this);
    }
    return orElse();
  }
}

abstract class _ButtonEnabled implements ReactiveButtonState {
  const factory _ButtonEnabled(
      {required String text, VoidCallback? onPressed}) = _$_ButtonEnabled;

  @override
  String get text;
  @override
  VoidCallback? get onPressed;
  @override
  @JsonKey(ignore: true)
  _$ButtonEnabledCopyWith<_ButtonEnabled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ButtonDisabledCopyWith<$Res>
    implements $ReactiveButtonStateCopyWith<$Res> {
  factory _$ButtonDisabledCopyWith(
          _ButtonDisabled value, $Res Function(_ButtonDisabled) then) =
      __$ButtonDisabledCopyWithImpl<$Res>;
  @override
  $Res call({String text, VoidCallback? onPressed});
}

/// @nodoc
class __$ButtonDisabledCopyWithImpl<$Res>
    extends _$ReactiveButtonStateCopyWithImpl<$Res>
    implements _$ButtonDisabledCopyWith<$Res> {
  __$ButtonDisabledCopyWithImpl(
      _ButtonDisabled _value, $Res Function(_ButtonDisabled) _then)
      : super(_value, (v) => _then(v as _ButtonDisabled));

  @override
  _ButtonDisabled get _value => super._value as _ButtonDisabled;

  @override
  $Res call({
    Object? text = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_ButtonDisabled(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$_ButtonDisabled implements _ButtonDisabled {
  const _$_ButtonDisabled({required this.text, this.onPressed});

  @override
  final String text;
  @override
  final VoidCallback? onPressed;

  @override
  String toString() {
    return 'ReactiveButtonState.buttonDisabled(text: $text, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ButtonDisabled &&
            const DeepCollectionEquality().equals(other.text, text) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(text), onPressed);

  @JsonKey(ignore: true)
  @override
  _$ButtonDisabledCopyWith<_ButtonDisabled> get copyWith =>
      __$ButtonDisabledCopyWithImpl<_ButtonDisabled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, VoidCallback? onPressed)
        buttonEnabled,
    required TResult Function(String text, VoidCallback? onPressed)
        buttonDisabled,
    required TResult Function(String text, VoidCallback? onPressed) loading,
  }) {
    return buttonDisabled(text, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, VoidCallback? onPressed)? buttonEnabled,
    TResult Function(String text, VoidCallback? onPressed)? buttonDisabled,
    TResult Function(String text, VoidCallback? onPressed)? loading,
  }) {
    return buttonDisabled?.call(text, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, VoidCallback? onPressed)? buttonEnabled,
    TResult Function(String text, VoidCallback? onPressed)? buttonDisabled,
    TResult Function(String text, VoidCallback? onPressed)? loading,
    required TResult orElse(),
  }) {
    if (buttonDisabled != null) {
      return buttonDisabled(text, onPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonEnabled value) buttonEnabled,
    required TResult Function(_ButtonDisabled value) buttonDisabled,
    required TResult Function(_Loading value) loading,
  }) {
    return buttonDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ButtonEnabled value)? buttonEnabled,
    TResult Function(_ButtonDisabled value)? buttonDisabled,
    TResult Function(_Loading value)? loading,
  }) {
    return buttonDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonEnabled value)? buttonEnabled,
    TResult Function(_ButtonDisabled value)? buttonDisabled,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (buttonDisabled != null) {
      return buttonDisabled(this);
    }
    return orElse();
  }
}

abstract class _ButtonDisabled implements ReactiveButtonState {
  const factory _ButtonDisabled(
      {required String text, VoidCallback? onPressed}) = _$_ButtonDisabled;

  @override
  String get text;
  @override
  VoidCallback? get onPressed;
  @override
  @JsonKey(ignore: true)
  _$ButtonDisabledCopyWith<_ButtonDisabled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res>
    implements $ReactiveButtonStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({String text, VoidCallback? onPressed});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ReactiveButtonStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? text = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_Loading(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading({required this.text, this.onPressed});

  @override
  final String text;
  @override
  final VoidCallback? onPressed;

  @override
  String toString() {
    return 'ReactiveButtonState.loading(text: $text, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            const DeepCollectionEquality().equals(other.text, text) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(text), onPressed);

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, VoidCallback? onPressed)
        buttonEnabled,
    required TResult Function(String text, VoidCallback? onPressed)
        buttonDisabled,
    required TResult Function(String text, VoidCallback? onPressed) loading,
  }) {
    return loading(text, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, VoidCallback? onPressed)? buttonEnabled,
    TResult Function(String text, VoidCallback? onPressed)? buttonDisabled,
    TResult Function(String text, VoidCallback? onPressed)? loading,
  }) {
    return loading?.call(text, onPressed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, VoidCallback? onPressed)? buttonEnabled,
    TResult Function(String text, VoidCallback? onPressed)? buttonDisabled,
    TResult Function(String text, VoidCallback? onPressed)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(text, onPressed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ButtonEnabled value) buttonEnabled,
    required TResult Function(_ButtonDisabled value) buttonDisabled,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ButtonEnabled value)? buttonEnabled,
    TResult Function(_ButtonDisabled value)? buttonDisabled,
    TResult Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ButtonEnabled value)? buttonEnabled,
    TResult Function(_ButtonDisabled value)? buttonDisabled,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ReactiveButtonState {
  const factory _Loading({required String text, VoidCallback? onPressed}) =
      _$_Loading;

  @override
  String get text;
  @override
  VoidCallback? get onPressed;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}
