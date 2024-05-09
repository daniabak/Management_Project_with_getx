import 'package:flutter/material.dart';
import 'package:management_project/core/resources/corlors.dart';
import 'package:management_project/core/resources/styles_app.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
            width: 240,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
            color:ColorManager.yellow,
            ),
            
           child: Center(child: Text(text,style:StylesApp.textStyle30400,)), 
          );
  }
}
