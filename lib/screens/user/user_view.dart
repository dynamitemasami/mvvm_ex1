import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'user_viewmodel.dart';

class UserScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final location = ref.watch(locationProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM Example with Freezed & Riverpod'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Name: ${user.name}'),
            Text('Age: ${user.age}'),
            Text('Location: $location'), // Display the location
            ElevatedButton(
              onPressed: () {
                ref.read(userProvider.notifier).updateUser('Jane Doe', 32);
              },
              child: Text('Update User'),
            ),
            ElevatedButton(
              onPressed: () {
                // Example of updating the location
                ref.read(userProvider.notifier).updateLocation('New Location', ref);
              },
              child: Text('Update Location'),
            ),
          ],
        ),
      ),
    );
  }
}
