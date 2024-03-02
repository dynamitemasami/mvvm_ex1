import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/api/http_request.dart';
import '../../data/model/pokemon.dart';
import '../../data/model/user.dart';

part 'pokemon_viewmodel.freezed.dart';
part 'pokemon_viewmodel.g.dart';

@freezed
class PokemonViewModelState with _$PokemonViewModelState {
  factory PokemonViewModelState({
    @Default(AsyncValue.loading()) AsyncValue<User?> pokemoninfo,
    @Default({}) Map<int, Pokemon> pokemap,
  }) = _PokemonViewModelState;
}

@riverpod
class PokemonViewModel extends _$PokemonViewModel {
  @override
  PokemonViewModelState build() {
    return PokemonViewModelState();
  }

  void addPoke(Pokemon poke) {
    final pokelist = Map<int, Pokemon>.from(state.pokemap);
    pokelist.addAll({poke.id: poke});
    state = state.copyWith(pokemap: pokelist);
  }

  Future fetchPoke(int id) async {
    final pokemon = await fetchPokemon(id);
    if (pokemon == null) return;
    addPoke(pokemon);
    print(pokemon);
  }
}
