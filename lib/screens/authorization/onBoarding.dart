import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled1/constant.dart';

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
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 40.0),
          child: PageView(
            controller: controller,
            children: [
              Container(

                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: double.infinity,),
                          Spacer(),
                          Text('welcome', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60, color: mainColor),),
                          // SizedBox(height: 30,),
                          SizedBox(height: 20,),
                          Text('We are glad that you are herem , discover your type of plant', style: TextStyle(fontSize: 25, color: mainColor),),
                          SizedBox(height: MediaQuery.of(context).size.height/2,),
                        ],
                      ),
                    ),
                    Positioned(
                        child: Image.asset('assects/alovera.png')),
                  ],
                ),
              ),
              Container(
                color: Colors.blueGrey,
                child: Image.asset('assects/1.png'),
              ),
              Container(
                color: Colors.yellowAccent,
                child: Center(child: Text('page 3')),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect:  ExpandingDotsEffect(),
            ),),

      ),
    );
  }
}
