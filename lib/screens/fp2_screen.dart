import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:woof_fini/custom/custom_pin_code.dart';

import 'fp3_screen.dart';

class FP2Screen extends StatefulWidget {
  @override
  _FP2ScreenState createState() => _FP2ScreenState();
}

class _FP2ScreenState extends State<FP2Screen> {
  TextEditingController controller = TextEditingController();
  int pinLength = 4;

  bool hasError = false;
  String errorMessage;

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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Verification Code',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15),
                AutoSizeText(
                  'recent password reset has been done succesfully',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  maxLines: 1,
                  minFontSize: 5,
                ),
                SizedBox(height: 35),
                PinCodeTextField(
                  autofocus: false,
                  controller: controller,
                  hideCharacter: false,
                  highlight: false,
                  highlightColor: Colors.blue,
                  defaultBorderColor: Color(0xff74d7df),
                  hasTextBorderColor: Color(0xff74d7df),
                  pinBoxColor: Color(0xff74d7df),
                  isCupertino: true,
                  pinBoxRadius: 10,
                  maxLength: pinLength,
                  hasError: hasError,
                  maskCharacter: '\u25CF',
                  onTextChanged: (text) {
                    setState(() {
                      hasError = false;
                    });
                  },
                  onDone: (text){
                    print("DONE $text");
                  },
                  wrapAlignment: WrapAlignment.center,
                  pinBoxDecoration: ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                  pinTextStyle: TextStyle(fontSize: 30.0, color: Colors.white),
                  pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.scalingTransition,
                  pinTextAnimatedSwitcherDuration: Duration(milliseconds: 300),
                ),
                SizedBox(height: 100),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FP3Screen()));
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
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FP3Screen()));
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
