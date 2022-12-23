import 'package:flutter/material.dart';

class Sign_Up extends StatelessWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assects/sign_in_bg.png',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            // Container(
            //   color: Colors.black.withOpacity(0.3),
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            // ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),blurRadius: 5,spreadRadius: 7

                    )
                  ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                height: MediaQuery.of(context).size.height / 1.3,
                width: MediaQuery.of(context).size.width / 1.1,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text('Sign Up', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
