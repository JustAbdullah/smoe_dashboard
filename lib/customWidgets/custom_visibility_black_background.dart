import 'package:flutter/material.dart';

// ignore: must_be_immutable

// ignore: must_be_immutable
class CustomVisibilityBlackBackGround extends StatelessWidget {
  Color? color;

  // ignore: non_constant_identifier_names
  bool thevisible;
  List<Widget> thechildren = <Widget>[];

  CustomVisibilityBlackBackGround({
    super.key,
    required this.thevisible,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: thevisible,
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: color),
    );
  }
}
