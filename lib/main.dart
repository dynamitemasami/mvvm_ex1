import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_ex1/screens/user/user_view.dart';


void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVVM Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserScreen(), // Your initial screen that uses Riverpod providers
    );
  }
}
