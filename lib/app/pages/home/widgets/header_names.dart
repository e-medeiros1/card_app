import 'package:flutter/material.dart';

import '../../../core/widgets/texts.dart';

class HeaderNames extends StatelessWidget {
  const HeaderNames({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 51,
          backgroundColor: Colors.deepOrange.shade500,
          child: const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/erim.png')),
        ),
        Texts(
          text: 'Erilândio Santos',
          style: const TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w400,
              letterSpacing: 1.5),
        ),
        Texts(
            text: 'DESENVOLVEDOR FLUTTER',
            style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 20,
                color: Colors.deepOrange.shade100,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold)),
        const SizedBox(
            width: 300, child: Divider(height: 10, color: Colors.white)),
      ],
    );
  }
}
