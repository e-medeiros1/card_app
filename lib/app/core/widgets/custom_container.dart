import 'package:card_app/app/core/themes/custom_box_shadow.dart';
import 'package:card_app/app/core/themes/text_theme.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  String text;
  IconData? icon;
  String? imagePath;
  void Function()? onTap;

  CustomContainer.icon(
      {Key? key, required this.text, required this.icon, required this.onTap})
      : super(key: key);

  CustomContainer.image(
      {Key? key,
      required this.text,
      required this.imagePath,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: customBoxShadow,
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          height: 50,
          width: size.width * 0.85,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              if (imagePath == null)
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(icon, color: Colors.deepOrange),
                ),
              if (imagePath != null)
                Padding(
                    padding: const EdgeInsets.only(right: 13),
                    child: Image(
                        image: AssetImage(imagePath.toString()),
                        color: Colors.deepOrange,
                        width: 27,
                        fit: BoxFit.cover)),
              Expanded(
                child: Text(text, style: customTextTheme),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
