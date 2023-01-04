import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/card_controller.dart';
import '../../../core/widgets/custom_container.dart';

class CenterContainers extends StatelessWidget {
   CenterContainers({super.key});

  final instance = Get.put(CardController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomContainer.icon(
          text: 'Whatsapp',
          icon: Icons.whatsapp,
          onTap: () => instance.launchWhatsapp(instance.toWhatsapp),
        ),
        const SizedBox(height: 20),
        CustomContainer.icon(
            text: 'Gmail',
            icon: Icons.email_outlined,
            onTap: () => instance.launchInMail(instance.toEmail)),
        const SizedBox(height: 20),
        CustomContainer.image(
            text: 'Github',
            imagePath: 'assets/images/github.png',
            onTap: () => instance.launchInWeb(instance.toGithub)),
        const SizedBox(height: 20),
        CustomContainer.image(
            text: 'Linkedin',
            imagePath: 'assets/images/linkedin.png',
            onTap: () => instance.launchInWeb(instance.toLinkedin)),
      ],
    );
  }
}
