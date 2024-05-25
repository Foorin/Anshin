import 'package:flutter/material.dart';

import '../widgets/accent_button.dart';
import '../styles.dart';

class ExitDialog extends StatelessWidget {
  final String description;
  const ExitDialog({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
      child: Padding(
        padding: const EdgeInsets.only(left: 47, right: 47, top: 22),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Вы уверены, что хотите выйти?',
              style: exitTextStyle,
            ),
            const SizedBox(height: 20,),
            AccentButton(
                title: 'отмена',
                onTap: () {
                  Navigator.pop(context);
                }),
            AccentButton2(
                title: 'выйти',
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
