import 'package:card_app/widgets/containers.dart';
import 'package:card_app/widgets/texts.dart';
import 'package:flutter/material.dart';

class CardApp extends StatefulWidget {
  const CardApp({Key? key}) : super(key: key);

  @override
  State<CardApp> createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {
  @override
  Widget build(BuildContext context) {
    AlertDialog dialog = AlertDialog(
      backgroundColor: Colors.blue.shade50,
      title: const Center(
        child: Text(
          'Contatos',
          style: TextStyle(
              fontFamily: 'SourceSansPro',
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
              color: Colors.deepOrange),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: Image.network(
              'https://cdn-icons-png.flaticon.com/512/25/25231.png',
              scale: 0.5,
              fit: BoxFit.cover,
              color: Colors.deepOrange,
            ),
            title: const Text(
              'github.com/e-medeiros1',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Image.network(
              'https://cdn-icons-png.flaticon.com/512/61/61109.png',
              scale: 0.5,
              fit: BoxFit.cover,
              color: Colors.deepOrange,
            ),
            title: const Text(
              'linkedin.com/in/erimedeiros',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade700,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
            height: 15,
          ),
          Container(
            height: 1,
            width: 300,
            color: Colors.deepOrange.shade100,
          ),
          const SizedBox(height: 20),
          Containers(text: '+55 (99) 98117-3168', icon: Icons.phone_outlined),
          const SizedBox(height: 20),
          Containers(text: 'hsymetry@gmail.com', icon: Icons.email_outlined),
          const SizedBox(height: 20),
          InkWell(
            child: Containers(text: 'Sobre', icon: Icons.info_outline),
            onTap: () {
              setState(() {
                showDialog(context: context, builder: (context) => dialog);
              });
            },
          )
        ],
      ),
    );
  }
}
