import 'package:flutter/material.dart';

import '../../design/colors.dart';
import 'melody_list.dart';
import '../../design/styles.dart';
import '../../design/images.dart';

class MelodyPage extends StatelessWidget {
  const MelodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Выбери мелодию',
          style: barTextStyle,
        ),
        backgroundColor: whitebackColor,
        centerTitle: true,
        leading: IconButton(icon: greyBackImage, onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body: Container(
        color: whitebackColor,
        child: const MelodyList(),
      ),
    );
  }

}

