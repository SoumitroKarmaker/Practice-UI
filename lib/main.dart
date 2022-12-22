import 'package:flutter/material.dart';
// import 'package:untitled1/screens/authorization/splash_screen.dart';
import 'package:untitled1/screens/authorization/onBoarding.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
