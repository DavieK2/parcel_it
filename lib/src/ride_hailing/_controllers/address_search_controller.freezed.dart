// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address_search_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddressSearchStateTearOff {
  const _$AddressSearchStateTearOff();

  _AddressSearchInitial initial({List<dynamic>? locations}) {
    return _AddressSearchInitial(
      locations: locations,
    );
  }

  _AddressSearchLoading loading() {
    return const _AddressSearchLoading();
  }

  _AddressSearchLoaded loaded({required List<dynamic> searchResults}) {
    return _AddressSearchLoaded(
      searchResults: searchResults,
    );
  }
}

/// @nodoc
const $AddressSearchState = _$AddressSearchStateTearOff();

/// @nodoc
mixin _$AddressSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic>? locations) initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> searchResults) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<dynamic>? locations)? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> searchResults)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic>? locations)? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> searchResults)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressSearchInitial value) initial,
    required TResult Function(_AddressSearchLoading value) loading,
    required TResult Function(_AddressSearchLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddressSearchInitial value)? initial,
    TResult Function(_AddressSearchLoading value)? loading,
    TResult Function(_AddressSearchLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressSearchInitial value)? initial,
    TResult Function(_AddressSearchLoading value)? loading,
    TResult Function(_AddressSearchLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressSearchStateCopyWith<$Res> {
  factory $AddressSearchStateCopyWith(
          AddressSearchState value, $Res Function(AddressSearchState) then) =
      _$AddressSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddressSearchStateCopyWithImpl<$Res>
    implements $AddressSearchStateCopyWith<$Res> {
  _$AddressSearchStateCopyWithImpl(this._value, this._then);

  final AddressSearchState _value;
  // ignore: unused_field
  final $Res Function(AddressSearchState) _then;
}

/// @nodoc
abstract class _$AddressSearchInitialCopyWith<$Res> {
  factory _$AddressSearchInitialCopyWith(_AddressSearchInitial value,
          $Res Function(_AddressSearchInitial) then) =
      __$AddressSearchInitialCopyWithImpl<$Res>;
  $Res call({List<dynamic>? locations});
}

/// @nodoc
class __$AddressSearchInitialCopyWithImpl<$Res>
    extends _$AddressSearchStateCopyWithImpl<$Res>
    implements _$AddressSearchInitialCopyWith<$Res> {
  __$AddressSearchInitialCopyWithImpl(
      _AddressSearchInitial _value, $Res Function(_AddressSearchInitial) _then)
      : super(_value, (v) => _then(v as _AddressSearchInitial));

  @override
  _AddressSearchInitial get _value => super._value as _AddressSearchInitial;

  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(_AddressSearchInitial(
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

class _$_AddressSearchInitial implements _AddressSearchInitial {
  const _$_AddressSearchInitial({this.locations});

  @override
  final List<dynamic>? locations;

  @override
  String toString() {
    return 'AddressSearchState.initial(locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressSearchInitial &&
            const DeepCollectionEquality().equals(other.locations, locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(locations));

  @JsonKey(ignore: true)
  @override
  _$AddressSearchInitialCopyWith<_AddressSearchInitial> get copyWith =>
      __$AddressSearchInitialCopyWithImpl<_AddressSearchInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic>? locations) initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> searchResults) loaded,
  }) {
    return initial(locations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<dynamic>? locations)? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> searchResults)? loaded,
  }) {
    return initial?.call(locations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic>? locations)? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> searchResults)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(locations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressSearchInitial value) initial,
    required TResult Function(_AddressSearchLoading value) loading,
    required TResult Function(_AddressSearchLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddressSearchInitial value)? initial,
    TResult Function(_AddressSearchLoading value)? loading,
    TResult Function(_AddressSearchLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressSearchInitial value)? initial,
    TResult Function(_AddressSearchLoading value)? loading,
    TResult Function(_AddressSearchLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AddressSearchInitial implements AddressSearchState {
  const factory _AddressSearchInitial({List<dynamic>? locations}) =
      _$_AddressSearchInitial;

  List<dynamic>? get locations;
  @JsonKey(ignore: true)
  _$AddressSearchInitialCopyWith<_AddressSearchInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddressSearchLoadingCopyWith<$Res> {
  factory _$AddressSearchLoadingCopyWith(_AddressSearchLoading value,
          $Res Function(_AddressSearchLoading) then) =
      __$AddressSearchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddressSearchLoadingCopyWithImpl<$Res>
    extends _$AddressSearchStateCopyWithImpl<$Res>
    implements _$AddressSearchLoadingCopyWith<$Res> {
  __$AddressSearchLoadingCopyWithImpl(
      _AddressSearchLoading _value, $Res Function(_AddressSearchLoading) _then)
      : super(_value, (v) => _then(v as _AddressSearchLoading));

  @override
  _AddressSearchLoading get _value => super._value as _AddressSearchLoading;
}

/// @nodoc

class _$_AddressSearchLoading implements _AddressSearchLoading {
  const _$_AddressSearchLoading();

  @override
  String toString() {
    return 'AddressSearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddressSearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic>? locations) initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> searchResults) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<dynamic>? locations)? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> searchResults)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic>? locations)? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> searchResults)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressSearchInitial value) initial,
    required TResult Function(_AddressSearchLoading value) loading,
    required TResult Function(_AddressSearchLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddressSearchInitial value)? initial,
    TResult Function(_AddressSearchLoading value)? loading,
    TResult Function(_AddressSearchLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressSearchInitial value)? initial,
    TResult Function(_AddressSearchLoading value)? loading,
    TResult Function(_AddressSearchLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AddressSearchLoading implements AddressSearchState {
  const factory _AddressSearchLoading() = _$_AddressSearchLoading;
}

/// @nodoc
abstract class _$AddressSearchLoadedCopyWith<$Res> {
  factory _$AddressSearchLoadedCopyWith(_AddressSearchLoaded value,
          $Res Function(_AddressSearchLoaded) then) =
      __$AddressSearchLoadedCopyWithImpl<$Res>;
  $Res call({List<dynamic> searchResults});
}

/// @nodoc
class __$AddressSearchLoadedCopyWithImpl<$Res>
    extends _$AddressSearchStateCopyWithImpl<$Res>
    implements _$AddressSearchLoadedCopyWith<$Res> {
  __$AddressSearchLoadedCopyWithImpl(
      _AddressSearchLoaded _value, $Res Function(_AddressSearchLoaded) _then)
      : super(_value, (v) => _then(v as _AddressSearchLoaded));

  @override
  _AddressSearchLoaded get _value => super._value as _AddressSearchLoaded;

  @override
  $Res call({
    Object? searchResults = freezed,
  }) {
    return _then(_AddressSearchLoaded(
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_AddressSearchLoaded implements _AddressSearchLoaded {
  const _$_AddressSearchLoaded({required this.searchResults});

  @override
  final List<dynamic> searchResults;

  @override
  String toString() {
    return 'AddressSearchState.loaded(searchResults: $searchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressSearchLoaded &&
            const DeepCollectionEquality()
                .equals(other.searchResults, searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searchResults));

  @JsonKey(ignore: true)
  @override
  _$AddressSearchLoadedCopyWith<_AddressSearchLoaded> get copyWith =>
      __$AddressSearchLoadedCopyWithImpl<_AddressSearchLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<dynamic>? locations) initial,
    required TResult Function() loading,
    required TResult Function(List<dynamic> searchResults) loaded,
  }) {
    return loaded(searchResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<dynamic>? locations)? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> searchResults)? loaded,
  }) {
    return loaded?.call(searchResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<dynamic>? locations)? initial,
    TResult Function()? loading,
    TResult Function(List<dynamic> searchResults)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(searchResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddressSearchInitial value) initial,
    required TResult Function(_AddressSearchLoading value) loading,
    required TResult Function(_AddressSearchLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AddressSearchInitial value)? initial,
    TResult Function(_AddressSearchLoading value)? loading,
    TResult Function(_AddressSearchLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddressSearchInitial value)? initial,
    TResult Function(_AddressSearchLoading value)? loading,
    TResult Function(_AddressSearchLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _AddressSearchLoaded implements AddressSearchState {
  const factory _AddressSearchLoaded({required List<dynamic> searchResults}) =
      _$_AddressSearchLoaded;

  List<dynamic> get searchResults;
  @JsonKey(ignore: true)
  _$AddressSearchLoadedCopyWith<_AddressSearchLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
