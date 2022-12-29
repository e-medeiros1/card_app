import 'package:card_app/card_app.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My card',
      debugShowCheckedModeBanner: false,
      home:  CardApp(),
    );

  }
}
