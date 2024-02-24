import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/model/user.dart';


// Define a StateProvider for the location string
final locationProvider = StateProvider<String>((ref) {
  return 'Initial Location';
});

final userProvider = StateNotifierProvider<UserViewModel, User>((ref) {
  return UserViewModel();
});

class UserViewModel extends StateNotifier<User> {
  UserViewModel() : super(const User(id: '1', name: 'John Doe', age: 30));

  // Method to update user remains unchanged
  void updateUser(String name, int age) {
    state = state.copyWith(name: name, age: age);
  }

  // You might want to add methods here that interact with the new location state
  void updateLocation(String newLocation, WidgetRef ref) {
    ref.read(locationProvider.notifier).state = newLocation;
  }
}
