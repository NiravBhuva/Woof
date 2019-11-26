import 'package:flutter/material.dart';
import 'package:woof_fini/screens/fp1_screen.dart';
import 'package:woof_fini/screens/home_screen.dart';
import 'package:woof_fini/screens/welcome_screen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  bool showEmailText = true;
  bool showPassText = true;

  @override
  void initState() {
    // TODO: implement initState
    emailController.text = 'johndoe789@gmail.com';
    passwordController.text = '123456';

    emailController.addListener(() {
      if (emailController.text == null || emailController.text.length == 0) {
        setState(() {
          showEmailText = false;
        });
      } else {
        setState(() {
          showEmailText = true;
        });
      }
    });

    passwordController.addListener(() {
      if (passwordController.text == null ||
          passwordController.text.length == 0) {
        setState(() {
          showPassText = false;
        });
      } else {
        setState(() {
          showPassText = true;
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
            width: double.infinity,
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(110)),
                        color: Color(0xff74d7df),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Image.asset('assets/woof_logo.png'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Image.asset(
                        'assets/woof_text.png',
                        width: 150,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                showEmailText
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'User name / Email address',
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
                    controller: emailController,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      hintText: 'User name / Email address',
                      hintStyle:
                          TextStyle(color: Color(0xff74d7df), fontSize: 15),
                      contentPadding: EdgeInsets.only(bottom: 20, top: 10),
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
                SizedBox(height: 25),
                showPassText
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Password',
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
                    controller: passwordController,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      letterSpacing: 5,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color(0xff74d7df),
                        fontSize: 15,
                        letterSpacing: 1,
                      ),
                      contentPadding: EdgeInsets.only(bottom: 20, top: 0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff95989a), width: 5),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff95989a), width: 5),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width - 130,
                      height: 55,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => WelcomeScreen()));
                        },
                        color: Color(0xff74d7df),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
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
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FP1Screen()));
                      },
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(
                          color: Color(0xff74d7df),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('assets/fb.png', height: 90, width: 90, fit: BoxFit.cover,),
                    Image.asset('assets/google.png', height: 90, width: 90, fit: BoxFit.cover,),
                  ],
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
