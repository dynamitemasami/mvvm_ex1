import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/user.dart';

part 'user_viewmodel.freezed.dart';
part 'user_viewmodel.g.dart';



@freezed
class UserViewModelState with _$UserViewModelState{
  factory UserViewModelState({
    @Default(AsyncValue.loading()) AsyncValue<User?> userinfo,
  }) = _UserViewModelState;
}

@riverpod
class UserViewModel extends _$UserViewModel {

  @override
  UserViewModelState build() {
    return UserViewModelState();
  }
  void updateUser(String id,String name, int age) {
    final newUser = User(id: id, name: name, age: age);
    state = state.copyWith(
      userinfo: AsyncValue.data(newUser),
    );
  }
}

