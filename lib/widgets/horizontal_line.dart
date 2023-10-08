// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';
import 'package:stupor/helper/colors.dart';

class HorizontalLine extends StatelessWidget {
  HorizontalLine({super.key, required this.name, required this.height});

  String name;
  double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 15.0),
            child: Divider(
              color: ColorSys.kSecondary,
              height: height,
              thickness: 4.0,
            ),
          ),
        ),
        Text(name),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: Divider(
              color: ColorSys.kSecondary,
              height: height,
              thickness: 4.0,
            ),
          ),
        ),
      ],
    );
  }
}
