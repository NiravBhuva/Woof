import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:woof_fini/screens/signin_screen.dart';

class SP4Screen extends StatefulWidget {
  @override
  _SP4ScreenState createState() => _SP4ScreenState();
}

class _SP4ScreenState extends State<SP4Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xff01000d),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Opacity(
              opacity: 0.15,
              child: Image.asset(
                'assets/splash_bg.png',
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                //color: Color(0xff707070).withOpacity(0.3),
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
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset('assets/unlock.png', height: 70, width: 70,),
                SizedBox(height: 40),
                Text(
                  'Password reset successful',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15),
                AutoSizeText(
                  'recent password reset has been done succesfully',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  minFontSize: 5,
                ),
                SizedBox(height: 120),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInScreen()));
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
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignInScreen()));
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
