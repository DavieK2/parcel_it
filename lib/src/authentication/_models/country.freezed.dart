// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Country _$CountryFromJson(Map<String, dynamic> json) {
  return _Country.fromJson(json);
}

/// @nodoc
class _$CountryTearOff {
  const _$CountryTearOff();

  _Country call(
      {required String name,
      required String phoneCode,
      required String countryCode}) {
    return _Country(
      name: name,
      phoneCode: phoneCode,
      countryCode: countryCode,
    );
  }

  Country fromJson(Map<String, Object?> json) {
    return Country.fromJson(json);
  }
}

/// @nodoc
const $Country = _$CountryTearOff();

/// @nodoc
mixin _$Country {
  String get name => throw _privateConstructorUsedError;
  String get phoneCode => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryCopyWith<Country> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryCopyWith<$Res> {
  factory $CountryCopyWith(Country value, $Res Function(Country) then) =
      _$CountryCopyWithImpl<$Res>;
  $Res call({String name, String phoneCode, String countryCode});
}

/// @nodoc
class _$CountryCopyWithImpl<$Res> implements $CountryCopyWith<$Res> {
  _$CountryCopyWithImpl(this._value, this._then);

  final Country _value;
  // ignore: unused_field
  final $Res Function(Country) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? phoneCode = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CountryCopyWith<$Res> implements $CountryCopyWith<$Res> {
  factory _$CountryCopyWith(_Country value, $Res Function(_Country) then) =
      __$CountryCopyWithImpl<$Res>;
  @override
  $Res call({String name, String phoneCode, String countryCode});
}

/// @nodoc
class __$CountryCopyWithImpl<$Res> extends _$CountryCopyWithImpl<$Res>
    implements _$CountryCopyWith<$Res> {
  __$CountryCopyWithImpl(_Country _value, $Res Function(_Country) _then)
      : super(_value, (v) => _then(v as _Country));

  @override
  _Country get _value => super._value as _Country;

  @override
  $Res call({
    Object? name = freezed,
    Object? phoneCode = freezed,
    Object? countryCode = freezed,
  }) {
    return _then(_Country(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: countryCode == freezed
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Country with DiagnosticableTreeMixin implements _Country {
  _$_Country(
      {required this.name, required this.phoneCode, required this.countryCode});

  factory _$_Country.fromJson(Map<String, dynamic> json) =>
      _$$_CountryFromJson(json);

  @override
  final String name;
  @override
  final String phoneCode;
  @override
  final String countryCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Country(name: $name, phoneCode: $phoneCode, countryCode: $countryCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Country'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phoneCode', phoneCode))
      ..add(DiagnosticsProperty('countryCode', countryCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Country &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phoneCode, phoneCode) &&
            const DeepCollectionEquality()
                .equals(other.countryCode, countryCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneCode),
      const DeepCollectionEquality().hash(countryCode));

  @JsonKey(ignore: true)
  @override
  _$CountryCopyWith<_Country> get copyWith =>
      __$CountryCopyWithImpl<_Country>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryToJson(this);
  }
}

abstract class _Country implements Country {
  factory _Country(
      {required String name,
      required String phoneCode,
      required String countryCode}) = _$_Country;

  factory _Country.fromJson(Map<String, dynamic> json) = _$_Country.fromJson;

  @override
  String get name;
  @override
  String get phoneCode;
  @override
  String get countryCode;
  @override
  @JsonKey(ignore: true)
  _$CountryCopyWith<_Country> get copyWith =>
      throw _privateConstructorUsedError;
}
