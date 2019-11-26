import 'package:flutter/material.dart';
import 'package:woof_fini/screens/signup_two_screen.dart';

class SignUpOneScreen extends StatefulWidget {
  @override
  _SignUpOneScreenState createState() => _SignUpOneScreenState();
}

class _SignUpOneScreenState extends State<SignUpOneScreen> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    nameController.text = 'Bold Pilot';
    emailController.text = 'rocky.morissette@stephanie.biz';
    passwordController.text = '12345678';
    confirmPasswordController.text = '12345678';
    super.initState();
  }

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
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
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
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Tell us about your pet',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  controller: nameController,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Color(0xff74d7df), fontSize: 15),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff95989a), width: 1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff95989a), width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  controller: emailController,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    labelStyle: TextStyle(color: Color(0xff74d7df), fontSize: 15),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff95989a), width: 1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff95989a), width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  controller: passwordController,
                  textAlign: TextAlign.start,
                  obscureText: true,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xff74d7df), fontSize: 15),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff95989a), width: 1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff95989a), width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  controller: confirmPasswordController,
                  textAlign: TextAlign.start,
                  obscureText: true,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Confirm password',
                    labelStyle: TextStyle(color: Color(0xff74d7df), fontSize: 15),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff95989a), width: 1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff95989a), width: 1),
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpTwoScreen()));
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
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpTwoScreen()));
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
        ],
      ),
    );
  }
}
