
import 'package:flutter/material.dart';
import 'package:management_project/core/resources/corlors.dart';

class RowOfPointer extends StatelessWidget {
  const RowOfPointer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
              color: ColorManager().navy,
              borderRadius: BorderRadius.circular(33)),
        ),
        Container(
          margin: const EdgeInsets.only(left: 4, right: 12),
          width: 12,
          height: 12,
          decoration: BoxDecoration(
              color: ColorManager().navy,
              borderRadius: BorderRadius.circular(33)),
        ),
      ],
    );
  }
}
