import 'package:flutter/material.dart';
import 'package:management_project/core/resources/corlors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

bool isChecked = false;

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        width: 23,
        height: 23,
        decoration: BoxDecoration(
          // border:
          //     Border.all(color: Colors.grey, width: 1.8),
          borderRadius: BorderRadius.circular(3),
          color: isChecked ? ColorManager.second : Colors.grey,
        ),
        child: isChecked
            ? Icon(Icons.check, size: 20, color: ColorManager.breast)
            : null,
      ),
    );
  }
}
