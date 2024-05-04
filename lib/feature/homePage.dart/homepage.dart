import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:management_project/core/resources/corlors.dart';
import 'package:management_project/core/resources/font.dart';
import 'package:management_project/core/resources/string.dart';
import 'package:management_project/feature/shared/Titles.dart';
import 'package:management_project/feature/shared/myContainer.dart';
import 'package:management_project/feature/shared/rowOfPointer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  String myText = StringManager().entrprise;

  bool isFull = false;
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    double maxHeight = isFull ? 1 : 222;
    return Scaffold(
        backgroundColor: ColorManager().navy,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                myContainer(
                    width: widthSize / 1.1,
                    height: 44,
                    color: ColorManager().second,
                    borderRaduis: BorderRadius.circular(15),
                    myWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: HeaderText(
                            text: StringManager().management,
                            fontSize: FontSize().s20,
                            fontWeight: FontWeight.w600,
                            textcolor: ColorManager().white,
                          ),
                        ),
                        RowOfPointer(),
                      ],
                    ),
                    widthSize: widthSize),
                SizedBox(
                  height: heightSize / 7,
                ),
                myContainer(
                    width: widthSize / 1.1,
                    borderRaduis: BorderRadius.circular(15),
                    height: 200,
                    color: Color.fromRGBO(255, 234, 205, 1),
                    myWidget: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: SingleChildScrollView(
                        child: StatefulBuilder(builder: (context, setState) {
                          return AnimatedSize(
                            duration: const Duration(milliseconds: 200),
                            child: Container(
                              height: maxHeight,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: myText,
                                        style: TextStyle(
                                          fontSize: FontSize().s15,
                                          fontWeight: FontWeight.w400,
                                          color: ColorManager().navy,
                                        )),
                                    TextSpan(
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          setState(() {
                                            isFull = !isFull;
                                            print(isFull);
                                          });
                                        },
                                      text: " ...show more",
                                      style: TextStyle(
                                        overflow: TextOverflow.fade,
                                        fontSize: FontSize().s20,
                                        fontWeight: FontWeight.w400,
                                        color: ColorManager().second,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    widthSize: widthSize),
                Row(
                  children: [],
                )
              ],
            ),
          ),
        ));
  }
}
