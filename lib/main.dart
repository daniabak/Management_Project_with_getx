import 'package:flutter/material.dart';
import 'package:management_project/feature/auth/login/view/login_view.dart';
import 'package:management_project/feature/auth/register/view/register_view.dart';
import 'package:management_project/feature/homePage.dart/homepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home:RegisterView(),
    );
  }
}
