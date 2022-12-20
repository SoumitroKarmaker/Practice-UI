import 'package:flutter/material.dart';
import 'package:untitled1/constant.dart';

class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'GO',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
              TextSpan(
                text: 'GREEN',
                style: TextStyle(
                  fontSize: 50,
                  color: textColor,
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
