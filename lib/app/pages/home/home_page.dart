import 'package:card_app/app/controllers/card_controller.dart';
import 'package:card_app/app/core/widgets/containers.dart';
import 'package:card_app/app/core/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final instance = Get.put(CardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade700,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          //Header
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
          const SizedBox(height: 15),
          const SizedBox(
            width: 300,
            child: Divider(
              height: 10,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          //Whatsapp
          GestureDetector(
            onTap: () {
              instance.launchWhatsapp(instance.toWhatsapp);
            },
            child: Containers(
                text: 'Whatsapp',
                icon: const Icon(
                  Icons.whatsapp,
                  color: Colors.deepOrange,
                )),
          ),
          const SizedBox(height: 20),
          //Gmail
          GestureDetector(
            onTap: () {
              instance.launchInMail(instance.toEmail);
            },
            child: Containers(
                text: 'Gmail',
                icon: const Icon(
                  Icons.email_outlined,
                  color: Colors.deepOrange,
                )),
          ),
          const SizedBox(height: 20),
          //Github
          GestureDetector(
            child: Containers.image(
                text: 'Github',
                image: const Image(
                  image: AssetImage('assets/images/github.png'),
                  color: Colors.deepOrange,
                  width: 27,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                )),
            onTap: () {
              instance.launchInWeb(instance.toGithub);
            },
          ),
          const SizedBox(height: 20),
          //Linkedin
          GestureDetector(
            onTap: () {
              instance.launchInWeb(instance.toLinkedin);
            },
            child: Containers.image(
              text: 'Linkedin',
              image: const Image(
                image: AssetImage('assets/images/linkedin.png'),
                color: Colors.deepOrange,
                width: 27,
              ),
            ),
          ),
          const Spacer(),
          //Footer
          const Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Text('Feito com ❤️',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0)),
          ),
        ],
      ),
    );
  }
}
