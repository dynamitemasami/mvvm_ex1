import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/pokemon.dart';

const int pokeMaxId = 1010;
const String pokeApiRoute = "https://pokeapi.co/api/v2";

Future<Pokemon?> fetchPokemon(int id) async {
  final res = await http.get(Uri.parse('$pokeApiRoute/pokemon/$id'));
  if (res.statusCode == 200) {
    return Pokemon.fromJson(jsonDecode(res.body));
  }
  return null;
}
