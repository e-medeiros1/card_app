import 'package:card_app/app/core/themes/custom_box_shadow.dart';
import 'package:card_app/app/core/themes/text_theme.dart';
import 'package:card_app/app/core/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

class FooterDialog extends StatefulWidget {
  const FooterDialog({super.key});

  @override
  State<FooterDialog> createState() => _FooterDialogState();
}

class _FooterDialogState extends State<FooterDialog> {
  final dialog = CustomDialog();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: GestureDetector(
        onTap: () => dialog.customDialog(context),
        child: Container(
          height: MediaQuery.of(context).size.height * .05,
          width: MediaQuery.of(context).size.width * .06,
          decoration: BoxDecoration(
              boxShadow: customBoxShadow,
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sobre', style: customTextTheme.copyWith(fontSize: 17)),
              const SizedBox(width: 3),
              const Icon(
                Icons.info_outline_rounded,
                color: Colors.deepOrange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
