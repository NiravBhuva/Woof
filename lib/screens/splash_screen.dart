import 'package:flutter/material.dart';
import 'package:woof_fini/screens/signin_screen.dart';
import 'package:woof_fini/screens/signup_one_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xff01000d),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/splash_bg.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              color: Color(0xff707070).withOpacity(0.3),
            ),
          ),
          Container(
          width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Image.asset(
                    'assets/woof_text.png',
                    width: 220,
                    color: Colors.white,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 130,
                      height: 55,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInScreen()));
                        },
                        color: Color(0xff74d7df),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: MediaQuery.of(context).size.width - 130,
                      height: 55,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpOneScreen()));
                        },
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25))),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Color(0xff74d7df),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
