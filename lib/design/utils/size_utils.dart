import 'package:flutter/material.dart';

double getListBottomPadding(BuildContext context){
  final safeBottomPadding = MediaQuery.of(context).padding.bottom;
  final bottomPadding = (safeBottomPadding + 10) * 2 + 40;
  return bottomPadding;
}