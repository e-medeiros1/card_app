import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/card_app.dart';

main() async {
  await dotenv.load(fileName: '.env');
  runApp(
    const CardApp(),
  );
}
