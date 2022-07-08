import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Containers extends StatelessWidget {
  String text;
  IconData? icon;

  Containers({Key? key, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.deepOrange.withOpacity(0.9),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(-3, 6),
              // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        height: 50,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Icon(icon, color: Colors.deepOrange),
          ),
          Text(text,
              style: const TextStyle(
                fontFamily: 'SourceSansPro',
                  fontSize: 20, color: Colors.deepOrange)),
        ]),
      ),
    );
  }
}
