import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/view/login/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RGIS',
      theme: ThemeData(
        primaryColor: kColorBlue,
      ),
      home: LoginView(),
    );
  }
}
