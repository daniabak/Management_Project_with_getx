// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:management_project/core/resources/corlors.dart';




class ChangeSign extends StatelessWidget {
  VoidCallback? onPress;
  final String text;
  final String textbutton;
  ChangeSign({
    Key? key,
    this.onPress,
    required this.text,
    required this.textbutton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18, color: Colors.grey[600]),
        ),
        TextButton(
            onPressed: onPress,
            child: Text(
              textbutton,
              style: TextStyle(color: ColorManager.second, fontSize: 18),
            ))
      ],
    );
  }
}
