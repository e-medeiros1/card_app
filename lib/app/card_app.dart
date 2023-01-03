import 'package:flutter/material.dart';

import 'pages/home/home_page.dart';

class CardApp extends StatelessWidget {
  const CardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Meu Cartão',
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );

  }
}