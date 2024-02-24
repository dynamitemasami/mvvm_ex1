
import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'user.freezed.dart';
part 'user.g.dart';



// freezedでコード生成するために「@freezed」を記述
@freezed
class User with _$User { // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory User({
    required String id,
    required String name,
    required int age,
    @Default(false) bool isPremium, // デフォルト値は「@Default([デフォルト値]])」の形式で指定可能
  }) = _User;

  // json形式で受け取るためのコードを生成するために記述
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}