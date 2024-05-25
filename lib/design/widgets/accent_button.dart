import 'package:flutter/material.dart';

import '../styles.dart';
import '../colors.dart';

class AccentButton extends StatelessWidget{
  final String title;
  final Function() onTap;
  const AccentButton({super.key, required this.title, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(160, 40),
          maximumSize: const Size.fromHeight(40),
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.only(left: 24, right: 25),
        ),
        child: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: buttonTextStyle,
        ),
    );
  }
}

class AccentButton2 extends StatelessWidget{
  final String title;
  final Function() onTap;
  const AccentButton2({super.key, required this.title, required this.onTap});


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(160, 40),
        maximumSize: const Size.fromHeight(40),
        backgroundColor: button2Color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.only(left: 24, right: 25),
      ),
      child: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontFamily: 'WixDisplay',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}