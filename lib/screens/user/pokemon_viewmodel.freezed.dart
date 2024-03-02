// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonViewModelState {
  AsyncValue<User?> get pokemoninfo => throw _privateConstructorUsedError;
  Map<int, Pokemon> get pokemap => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonViewModelStateCopyWith<PokemonViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonViewModelStateCopyWith<$Res> {
  factory $PokemonViewModelStateCopyWith(PokemonViewModelState value,
          $Res Function(PokemonViewModelState) then) =
      _$PokemonViewModelStateCopyWithImpl<$Res, PokemonViewModelState>;
  @useResult
  $Res call({AsyncValue<User?> pokemoninfo, Map<int, Pokemon> pokemap});
}

/// @nodoc
class _$PokemonViewModelStateCopyWithImpl<$Res,
        $Val extends PokemonViewModelState>
    implements $PokemonViewModelStateCopyWith<$Res> {
  _$PokemonViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemoninfo = null,
    Object? pokemap = null,
  }) {
    return _then(_value.copyWith(
      pokemoninfo: null == pokemoninfo
          ? _value.pokemoninfo
          : pokemoninfo // ignore: cast_nullable_to_non_nullable
              as AsyncValue<User?>,
      pokemap: null == pokemap
          ? _value.pokemap
          : pokemap // ignore: cast_nullable_to_non_nullable
              as Map<int, Pokemon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonViewModelStateImplCopyWith<$Res>
    implements $PokemonViewModelStateCopyWith<$Res> {
  factory _$$PokemonViewModelStateImplCopyWith(
          _$PokemonViewModelStateImpl value,
          $Res Function(_$PokemonViewModelStateImpl) then) =
      __$$PokemonViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<User?> pokemoninfo, Map<int, Pokemon> pokemap});
}

/// @nodoc
class __$$PokemonViewModelStateImplCopyWithImpl<$Res>
    extends _$PokemonViewModelStateCopyWithImpl<$Res,
        _$PokemonViewModelStateImpl>
    implements _$$PokemonViewModelStateImplCopyWith<$Res> {
  __$$PokemonViewModelStateImplCopyWithImpl(_$PokemonViewModelStateImpl _value,
      $Res Function(_$PokemonViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemoninfo = null,
    Object? pokemap = null,
  }) {
    return _then(_$PokemonViewModelStateImpl(
      pokemoninfo: null == pokemoninfo
          ? _value.pokemoninfo
          : pokemoninfo // ignore: cast_nullable_to_non_nullable
              as AsyncValue<User?>,
      pokemap: null == pokemap
          ? _value._pokemap
          : pokemap // ignore: cast_nullable_to_non_nullable
              as Map<int, Pokemon>,
    ));
  }
}

/// @nodoc

class _$PokemonViewModelStateImpl implements _PokemonViewModelState {
  _$PokemonViewModelStateImpl(
      {this.pokemoninfo = const AsyncValue.loading(),
      final Map<int, Pokemon> pokemap = const {}})
      : _pokemap = pokemap;

  @override
  @JsonKey()
  final AsyncValue<User?> pokemoninfo;
  final Map<int, Pokemon> _pokemap;
  @override
  @JsonKey()
  Map<int, Pokemon> get pokemap {
    if (_pokemap is EqualUnmodifiableMapView) return _pokemap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pokemap);
  }

  @override
  String toString() {
    return 'PokemonViewModelState(pokemoninfo: $pokemoninfo, pokemap: $pokemap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonViewModelStateImpl &&
            (identical(other.pokemoninfo, pokemoninfo) ||
                other.pokemoninfo == pokemoninfo) &&
            const DeepCollectionEquality().equals(other._pokemap, _pokemap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, pokemoninfo, const DeepCollectionEquality().hash(_pokemap));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonViewModelStateImplCopyWith<_$PokemonViewModelStateImpl>
      get copyWith => __$$PokemonViewModelStateImplCopyWithImpl<
          _$PokemonViewModelStateImpl>(this, _$identity);
}

abstract class _PokemonViewModelState implements PokemonViewModelState {
  factory _PokemonViewModelState(
      {final AsyncValue<User?> pokemoninfo,
      final Map<int, Pokemon> pokemap}) = _$PokemonViewModelStateImpl;

  @override
  AsyncValue<User?> get pokemoninfo;
  @override
  Map<int, Pokemon> get pokemap;
  @override
  @JsonKey(ignore: true)
  _$$PokemonViewModelStateImplCopyWith<_$PokemonViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
