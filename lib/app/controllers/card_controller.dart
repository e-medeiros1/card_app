import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class CardController extends GetxController {
  loadEnv() async {
    await dotenv.load(fileName: '.env');
  }

  final Rx<Uri> toWhatsapp = Uri(
    scheme: 'https',
    host: 'wa.me',
    path: dotenv.env['WHATSAPP'],
  ).obs;

  final Rx<Uri> toEmail = Uri(
    scheme: 'mailto',
    path: dotenv.env['EMAIL'],
  ).obs;

  final Rx<Uri> toGithub = Uri(
    scheme: 'https',
    host: 'www.github.com',
    path: dotenv.env['GITHUB'],
  ).obs;

  final Rx<Uri> toLinkedin = Uri(
          scheme: 'https',
          host: 'www.linkedin.com',
          path: dotenv.env['LINKEDIN'])
      .obs;

  Future<void> launchWhatsapp(var url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> launchInMail(var url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.platformDefault,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> launchInWeb(var url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
}
