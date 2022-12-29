import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Containers extends StatelessWidget {
  String text;
  Widget? icon;
  Widget? image;

  Containers({Key? key, required this.text, this.icon}) : super(key: key);

  Containers.image({Key? key, required this.text, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.deepOrange.withOpacity(0.9),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(-3, 6),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        height: 50,
        width: size.width * 0.85,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        //Icons
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: image,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: icon,
          ),
          //Texts
          Text(text,
              style: const TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  color: Colors.deepOrange)),
        ]),
      ),
    );
  }
}
