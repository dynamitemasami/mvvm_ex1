import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'user_viewmodel.dart';

class UserScreen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userViewModelProvider);
    final notifier = ref.read(userViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM Example with Freezed & Riverpod'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ID: ${user.userinfo.value?.id}'),
            Text('Name: ${user.userinfo.value?.name}'),
            Text('Age: ${user.userinfo.value?.age}'),
          //  Text('Location: $location'), // Display the location
            ElevatedButton(
              onPressed: () {
                // Example values for demonstration; replace with actual values as needed
                String newId = "A252";
                String newName = 'Taro Yoshida'; // Example new name
                int newAge = 25; // Example new age

                // Retrieve the notifier for your user view model
                final notifier = ref.read(userViewModelProvider.notifier);

                // Call the updateUser method on your notifier with the new values
                notifier.updateUser(newId, newName, newAge);

              },
              child: Text('Update User'),
            ),

          ],
        ),
      ),
    );
  }
}
