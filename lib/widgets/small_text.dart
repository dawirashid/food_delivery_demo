import 'package:flutter/material.dart';


/// A class that returns a text widget with the given text, color, size and height.
// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  Color? color; // color are optional
  final String text;
  double size;
  double height;

  SmallText({
    Key? key,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.size = 12,
    this.height=1.2,
  }) //constant
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          height: height,
          fontFamily: 'Roboto',
          fontSize: size),
    );
  }
}
