import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:woof_fini/screens/welcome_screen.dart';

class OnboardingOneScreen extends StatefulWidget {
  @override
  _OnboardingOneScreenState createState() => _OnboardingOneScreenState();
}

class _OnboardingOneScreenState extends State<OnboardingOneScreen> {
  List<OnboardingPage> pages = [
    OnboardingPage('assets/onb1.png', 'Meet your pets', 'best friend'),
    OnboardingPage('assets/onb5.png', 'Rediscover your love for', 'Your pet'),
    OnboardingPage('assets/onb3.png', 'Discover new places and', 'attend events'),
  ];
  Timer timer;
  PageController _controller = PageController(initialPage: 0, keepPage: false);
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    //startTimeout();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    startTimeout(3000);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemCount: pages.length,
            onPageChanged: (index) {
              setState(() {
                count = index;
              });
            },
            itemBuilder: (context, index) {
              return Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Container(
                    color: Color(0xff74d7df),
                    child: Image.asset(
                      pages[index].image,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      AutoSizeText(
                        pages[index].title1,
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      AutoSizeText(
                        pages[index].title2,
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 170),
                    ],
                  )
                ],
              );
            },
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                DotsIndicator(
                  dotsCount: pages.length,
                  position: count.toDouble(),
                  decorator: DotsDecorator(
                    activeColor: Colors.black,
                  ),
                ),
                SizedBox(height: 25),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WelcomeScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      color: Colors.black,
                    ),
                    padding: EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/paw_up.png',
                      color: Colors.white,
                      height: 40,
                      width: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  startTimeout([int milliseconds]) {
    const timeout = const Duration(seconds: 3);
    const ms = const Duration(milliseconds: 1);

    var duration = milliseconds == null ? timeout : ms * milliseconds;
    timer = new Timer(duration, handleTimeout);
    return timer;
  }

  void handleTimeout() {
    timer.cancel();
    startTimeout(3000);
    if (count == pages.length - 1) {
      count = 0;
    } else {
      count++;
    }
    _controller.jumpToPage(count);
    //_controller.animateToPage(count, duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
  }
}

class OnboardingPage{
  String image;
  String title1;
  String title2;

  OnboardingPage(this.image, this.title1, this.title2);
}
