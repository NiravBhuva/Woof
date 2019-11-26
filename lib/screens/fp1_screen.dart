import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'fp2_screen.dart';

class FP1Screen extends StatefulWidget {
  @override
  _FP1ScreenState createState() => _FP1ScreenState();
}

class _FP1ScreenState extends State<FP1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Opacity(
              opacity: 0.15,
              child: Image.asset(
                'assets/splash_bg.png',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                //color: Color(0xff707070).withOpacity(0.1),
              ),
            ),
          ),
          Container(
            margin:
            EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 15),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: AutoSizeText(
                    'Enter the email address associated with your account.',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    minFontSize: 10,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: AutoSizeText(
                    'We will email you a link to reset your password.',
                    style: TextStyle(fontSize: 18, color: Color(0xff707070).withOpacity(0.9)),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    minFontSize: 10,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    //controller: emailController,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff707070).withOpacity(0.5), fontSize: 20),
                    decoration: InputDecoration(
                      hintText: 'Enter Email Address',
                      hintStyle:
                      TextStyle(color: Color(0xff707070).withOpacity(0.5), fontSize: 20),
                      contentPadding: EdgeInsets.only(bottom: 20, top: 10),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xff707070).withOpacity(0.5), width: 3),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xff707070).withOpacity(0.5), width: 3),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FP2Screen()));
                        },
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 23,
                            color: Color(0xff74d7df),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FP2Screen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            color: Color(0xff74d7df),
                          ),
                          padding: EdgeInsets.all(15),
                          child: Image.asset(
                            'assets/paw.png',
                            color: Colors.white,
                            height: 40,
                            width: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
