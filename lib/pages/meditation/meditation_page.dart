import 'package:flutter/material.dart';

import '../../design/colors.dart';
import 'meditation_list.dart';
import '../../design/styles.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Выбери медитацию',
          style: barTextStyle,
        ),
        backgroundColor: whitebackColor,
        centerTitle: true,
      ),
      body: Container(
        color: whitebackColor,
        child: const MeditationList(),
      ),
    );
  }
}
