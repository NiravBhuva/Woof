import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:woof_fini/screens/fp4_screen.dart';

class FP3Screen extends StatefulWidget {
  @override
  _FP3ScreenState createState() => _FP3ScreenState();
}

class _FP3ScreenState extends State<FP3Screen> {
  TextEditingController newPassController = new TextEditingController();
  TextEditingController repeatPassController = new TextEditingController();
  bool showNewPass = true;
  bool showRepeatPass = true;

  @override
  void initState() {
    // TODO: implement initState
    newPassController.text = '123456';
    repeatPassController.text = '123456';

    newPassController.addListener(() {
      if (newPassController.text == null || newPassController.text.length == 0) {
        setState(() {
          showNewPass = false;
        });
      } else {
        setState(() {
          showNewPass = true;
        });
      }
    });

    repeatPassController.addListener(() {
      if (repeatPassController.text == null ||
          repeatPassController.text.length == 0) {
        setState(() {
          showRepeatPass = false;
        });
      } else {
        setState(() {
          showRepeatPass = true;
        });
      }
    });
    super.initState();
  }

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
                Text(
                  'Password reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15),
                AutoSizeText(
                  'Please type in new password',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  maxLines: 1,
                  minFontSize: 5,
                ),
                SizedBox(height: 25),
                showNewPass
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'New Password',
                      style: TextStyle(
                        color: Color(0xff74d7df),
                        fontSize: 15,
                      ),
                    )
                  ],
                )
                    : Container(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    controller: newPassController,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      letterSpacing: 5,
                    ),
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      hintStyle: TextStyle(
                        color: Color(0xff74d7df),
                        fontSize: 15,
                        letterSpacing: 1,
                      ),
                      contentPadding: EdgeInsets.only(bottom: 20, top: 0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xff95989a), width: 3),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xff95989a), width: 3),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                showRepeatPass
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Repeat Password',
                      style: TextStyle(
                        color: Color(0xff74d7df),
                        fontSize: 15,
                      ),
                    )
                  ],
                )
                    : Container(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: TextField(
                    controller: repeatPassController,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      letterSpacing: 5,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Repeat Password',
                      hintStyle: TextStyle(
                        color: Color(0xff74d7df),
                        fontSize: 15,
                        letterSpacing: 1,
                      ),
                      contentPadding: EdgeInsets.only(bottom: 20, top: 0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xff95989a), width: 3),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xff95989a), width: 3),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SP4Screen()));
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
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SP4Screen()));
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
          )
        ],
      ),
    );
  }
}
