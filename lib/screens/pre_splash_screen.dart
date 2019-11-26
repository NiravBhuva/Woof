import 'package:flutter/material.dart';
import 'package:woof_fini/screens/splash_screen.dart';

class PreSplashScreen extends StatefulWidget {
  @override
  _PreSplashScreenState createState() => _PreSplashScreenState();
}

class _PreSplashScreenState extends State<PreSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xff74d7df),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/splash_bg.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              color: Color(0xff707070).withOpacity(0.2),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SplashScreen()));
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Color(0xfff8633b),
                ),
                padding: EdgeInsets.all(8),
                child: Image.asset('assets/woof_logo.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
