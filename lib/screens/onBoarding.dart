import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 60.0),
        child: PageView(
          controller: controller,
          children: [
            Container(
              color: Colors.red,
              child: Center(child: Text('page 1')),
            ),
            Container(
              color: Colors.blueGrey,
              child: Center(child: Text('page 2')),
            ),
            Container(
              color: Colors.yellowAccent,
              child: Center(child: Text('page 3')),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 60.0,
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){}, child: Text('Skip')),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect:  ExpandingDotsEffect(),
              ),),
              TextButton(onPressed: (){}, child: Text('NEXT')),
            ],
          ),

      ),
    );
  }
}
