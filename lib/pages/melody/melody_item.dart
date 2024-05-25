import 'package:flutter/material.dart';

import '../../design/colors.dart';
import '../../design/styles.dart';

class MelodyItem extends StatelessWidget {
  final String melodyNumber;
  final Function() onTap;

  const MelodyItem(
      {super.key, required this.onTap, required this.melodyNumber});

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
              children: <Widget>[
                const SizedBox(width: 16),
                Expanded(child:Text(melodyNumber,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: cardTextStyle)
                )
              ],
            ),
          )
      ),
    );
  }
}
