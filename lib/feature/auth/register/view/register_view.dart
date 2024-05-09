import 'package:flutter/material.dart';
import 'package:management_project/core/config/check_validate.dart';
import 'package:management_project/core/resources/corlors.dart';
import 'package:management_project/core/resources/string.dart';
import 'package:management_project/core/resources/styles_app.dart';
import 'package:management_project/feature/shared/custom_botton.dart';
import 'package:management_project/feature/shared/custom_check_box.dart';
import 'package:management_project/feature/shared/custom_text_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

bool isChecked = false;
TextEditingController password=TextEditingController();
TextEditingController email=TextEditingController();
TextEditingController lastName=TextEditingController();
TextEditingController firstName=TextEditingController();
class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: 
      ColorManager.navy,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              //  Center(child: Icon(Icons.abc))
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorManager.offWhite,
                  ),
                  width: MediaQuery.of(context).size.width / 1.25,
                  height: MediaQuery.of(context).size.height / 1.6,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                         Text(
                          StringManager.firstName,
                          style: StylesApp.textStyle17400,
                        ),
                        CustomTextfield(
                          controller: firstName,
                          validator: checkValidate,
                          hintText: 'name',
                          hintStyle: TextStyle(color: ColorManager.navy),
                        ),
                         Text(
                          StringManager.lastName,
                          style: StylesApp.textStyle17400,
                        ),
                        CustomTextfield(
                          controller: lastName,
                          validator: checkValidate,
                          hintText: 'name',
                          hintStyle: TextStyle(color: ColorManager.navy),
                        ),
                        Text(
                          StringManager.EMAIL,
                          style: StylesApp.textStyle17400,
                        ),
                        CustomTextfield(
                          controller: email,
                          validator: checkValidate,
                          hintText: 'Example@gmail.com',
                          hintStyle: TextStyle(color: ColorManager.navy),
                        ),
                        Text(
                          StringManager.PASSWORD,
                          style: StylesApp.textStyle17400,
                        ),
                        CustomTextfield(
                          controller: password,
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: ColorManager.navy,
                          ),
                          validator: checkValidate,
                          hintText: '**********',
                          hintStyle: TextStyle(color: ColorManager.navy),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           CustomCheckBox(),
                        Padding(
                          padding: const EdgeInsets.only(left: 17),
                          child: Text(
                            StringManager.REMEMBERME,
                            style: StylesApp.textStyle17400,
                          ),
                        )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  
                },
                child: CustomBotton(text: StringManager.SignUp)),
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  width: 300,
                  //  MediaQuery.of(context).size.width / 1.44 ,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Text(
                        StringManager.AlreadyHaveAnAccount,
                        style: StylesApp.textStyle15400,
                        maxLines: 2,
                      )),
                      Center(
                          child: Text(
                        ' ${StringManager.LOGIN}',
                        style: StylesApp.textStyle16400,
                        maxLines: 2,
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
       Align(
        alignment: Alignment(0,-0.82),
         child: CircleAvatar(
          radius: 61,
          backgroundColor: ColorManager.navy,
           child: CircleAvatar(
            radius: 60,
            backgroundColor: ColorManager.yellow,
             child: CircleAvatar(
              radius: 50,
              backgroundColor: ColorManager.second,
              backgroundImage:AssetImage('assets/images/Intersect.png'),
             ),
           ),
         ),
       )
        ],
      ),
    );
  }
}
