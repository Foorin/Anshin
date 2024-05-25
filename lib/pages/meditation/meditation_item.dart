import 'package:flutter/material.dart';

import '../../design/images.dart';
import '../../design/colors.dart';
import '../../design/styles.dart';

class MeditationItem extends StatelessWidget {

  final Function() onTap;
  const MeditationItem({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
          color: backgroundColor,
          margin: EdgeInsets.zero,
          // elevation: 0.06,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: onTap,
            child: Row(
              children: <Widget>[_title()],
            ),
          )),
    );
  }

  Widget _title() {
    return const Padding(
      padding: EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text('Сияние внутреннего света',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: cardTextStyle,
          )
        ],
      ),
    );
  }
}
