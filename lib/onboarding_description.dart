import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'introscreen1.dart';
import 'introscreens2.dart';
import 'introscreen3.dart';
import 'introscreen4.dart';
import 'homepage.dart';
import 'package:lumo_app/index.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  //controller to keep count of the page we are on
  final PageController _controller = PageController();

  //Keep Track of What Page we are on
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //page view
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: const [
              IntroScreen1(),
              IntroScreen2(),
              IntroScreen3(),
              IntroScreen4(),
            ],
          ),
          //Dot Indicators

          Container(
              alignment: const Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Skip Button

                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(3);
                      },
                      child: const Text('Skip')),

//Dot indicator
                  SmoothPageIndicator(controller: _controller, count: 4),
                  //Next/ Done Button

                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return LoginPage();
                              },
                            ));
                          },
                          child: const Text('Done'))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInExpo);
                          },
                          child: const Text('Next')),
                ],
              )),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_max_rounded),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.verified_user),
      //     ),
      //   ],
      // ),
    );
  }
}
