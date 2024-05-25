import 'package:flutter/material.dart';

import '../../design/utils/size_utils.dart';
import '../../design/widgets/accent_button.dart';
import 'melody_item.dart';

class MelodyList extends StatelessWidget {
  const MelodyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      _list(context),
      Align(alignment: Alignment.bottomCenter, child: _saveButton(context))
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
        return MelodyItem(melodyNumber: '1', onTap: (){

        });
      },
    );
  }

  Widget _saveButton(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
          child: AccentButton(
            title: 'Save',
            onTap: () {},
          ),
        ));
  }
}
