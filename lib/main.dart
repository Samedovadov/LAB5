import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const SneakerStoreApp());
}

class SneakerStoreApp extends StatelessWidget {
  const SneakerStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sneaker Store',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepPurple),
      home: const HomeScreen(),
    );
  }
}
