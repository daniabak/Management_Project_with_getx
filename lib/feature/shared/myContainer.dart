// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  double width;
  double height;
  Color color;
  BorderRadiusGeometry? borderRaduis;
  Widget myWidget;
   myContainer({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
    this.borderRaduis,
    required this.myWidget,
    required this.widthSize,
  }) : super(key: key);

  final double widthSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(borderRadius: borderRaduis, color: color),
      child: myWidget,
    );
  }
}
