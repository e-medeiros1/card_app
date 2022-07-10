import 'package:card_app/widgets/containers.dart';
import 'package:card_app/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardApp extends StatefulWidget {
  const CardApp({Key? key}) : super(key: key);

  @override
  State<CardApp> createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {
  // ignore: unused_field
  Future<void>? _launched;
  //Github
  final Uri toLaunch =
      Uri(scheme: 'https', host: 'www.github.com', path: '/e-medeiros1/');
  //Linkedin
  final Uri toLaunchWeb =
      Uri(scheme: 'https', host: 'www.linkedin.com', path: '/in/erimedeiros/');
  //Gmail
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'hsymetry@gmail.com',
  );

  final Uri? toWhatsapp = Uri(
    scheme: 'https',
    host: 'wa.me',
    path: '559981173168',
  );

//Whatsapp

  Future<void> _launchWhatsapp(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

//Email
  Future<void> _launchInMail(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.platformDefault,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWeb(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
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
              text: 'Desenvolvedor Flutter'.toUpperCase(),
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
          InkWell(
            onTap: () {
              setState(() {
                _launched = _launchWhatsapp(toWhatsapp!);
              });
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
          InkWell(
            onTap: () {
              setState(() {
                _launched = _launchInMail(emailLaunchUri);
              });
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
          InkWell(
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
              setState(() {
                _launched = _launchInWeb(toLaunch);
              });
            },
          ),
          const SizedBox(height: 20),
          //Linkedin
          InkWell(
            onTap: () {
              setState(() {
                _launched = _launchInWeb(toLaunchWeb);
              });
            },
            child: Containers.image(
              text: 'Linkedin',
              image: const Image(
                image: AssetImage('assets/images/linkedin.png'),
                color: Colors.deepOrange,
                width: 27,
              ),
            ),
          )
        ],
      ),
    );
  }
}
