import 'package:card_app/app/core/themes/text_theme.dart';
import 'package:flutter/material.dart';

class CustomDialog {
  void customDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          alignment: Alignment.center,
          title: Center(
              child: Text(
            "Minha alternativa ao linktree",
            style: customTextTheme.copyWith(
                fontWeight: FontWeight.bold, fontSize: 18, letterSpacing: 2.0),
          )),
          content: Text(
            'Uma forma de aplicar conceitos novos que aprendi ao longo dos meses de estudo\ne com uma refatoração que traz complexidade ao código\n\n Feito com ❤️',
            textAlign: TextAlign.center,
            style: customTextTheme.copyWith(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
          ),
          actionsAlignment: MainAxisAlignment.center,
        );
      },
    );
  }
}
