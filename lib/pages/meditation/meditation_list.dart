import 'package:anshin/pages/melody/melody_page.dart';
import 'package:flutter/material.dart';

import '../../design/utils/size_utils.dart';
import '../../design/widgets/accent_button.dart';
import 'meditation_item.dart';
import '../../design/dialog/exit_dialog.dart';
import '../../design/colors.dart';

class MeditationList extends StatelessWidget {
  const MeditationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(context),
      Align(alignment: Alignment.bottomCenter, child: _copyButton(context))
    ]);
  }

  Widget _list(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      padding: EdgeInsets.only(
        left: 16,
        top: 16,
        right: 16,
        bottom: getListBottomPadding(context),
      ),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return MeditationItem(
          onTap: () async {
            await _showMelodyPage(context);
          },
        );
      },
    );
  }

  Widget _copyButton(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
      child: AccentButton(
        title: 'Выйти',
        onTap: () {
          _showExitDialog(context);
        },
      ),
    ));
  }

  void _showExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const ExitDialog(description: 'Вы уверены?');
      },
    );
  }

  Future<void> _showMelodyPage(BuildContext context) async {
    await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const MelodyPage();
    }));
  }
}
