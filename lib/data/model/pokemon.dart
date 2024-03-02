
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon  with _$Pokemon{

  const factory Pokemon({
    required int id,
    required String name,
    required List<String> types,
    required String imageUrl,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);

}