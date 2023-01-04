import 'package:card_app/app/pages/home/widgets/center_containers.dart';
import 'package:card_app/app/pages/home/widgets/footer_dialog.dart';
import 'package:card_app/app/pages/home/widgets/header_names.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade700,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const HeaderNames(),
          CenterContainers(),
          const FooterDialog(),
        ],
      ),
    );
  }
}
