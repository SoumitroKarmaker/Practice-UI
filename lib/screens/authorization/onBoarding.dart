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
                          SizedBox(
                            width: double.infinity,
                          ),
                          Spacer(),
                          Text(
                            'welcome',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 60,
                                color: mainColor),
                          ),
                          // SizedBox(height: 30,),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'We are glad that you are herem , discover your type of plant',
                            style: TextStyle(fontSize: 25, color: mainColor),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 2,
                          ),
                        ],
                      ),
                    ),
                    Positioned(child: Image.asset('assects/alovera.png')),
                  ],
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assects/2.png'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Discover your type of plant',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: mainColor),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'The major and essential requirements for growing a '
                        'healthy plant are optimum temperature, pH, light, '
                        'water, oxygen, mineral nutrients and soil support.',
                        style: TextStyle(fontSize: 16, color: seconderyColor),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15.0),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height / 2,
                              child: Image.asset('assects/3.png')),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Connected with another plant lovers',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: mainColor),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Join a Comunity',
                              style: TextStyle(
                                  fontSize: 18, color: seconderyColor),
                            ),
                          ),
                        ],
                      ),
                      Positioned(child: ElevatedButton(
                        onPressed: (){},
                        child: Text('Get Started'),
                      ))
                    ],
                  ),
                ),
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
            effect: ExpandingDotsEffect(),
          ),
        ),
      ),
    );
  }
}
