import 'dart:core';
import 'dart:core';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:woof_fini/screens/welcome_screen.dart';

import 'onboarding_1_screen.dart';

class SignUpTwoScreen extends StatefulWidget {
  @override
  _SignUpTwoScreenState createState() => _SignUpTwoScreenState();
}

class _SignUpTwoScreenState extends State<SignUpTwoScreen> {
  TextEditingController birthdayController = new TextEditingController();
  TextEditingController breedController = new TextEditingController();

  int genderSelector;
  double slider = 4.5;

  List<SignUpChip> chips = [];
  int selected = 0;

  @override
  void initState() {
    // TODO: implement initState
    birthdayController.text = '09 May 2017';
    breedController.text = 'British Shorthair';

    chips.add(SignUpChip('assets/dog.png', 'Dogs'));
    chips.add(SignUpChip('assets/set_cat.png', 'Cats'));
    chips.add(SignUpChip('assets/set_bird.png', 'Birds'));
    chips.add(SignUpChip('assets/set_rabbit.png', 'Bunnies'));
    chips.add(SignUpChip('assets/set_fish.png', 'Others'));

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
                margin:
                    EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
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
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  controller: birthdayController,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Birtday',
                    labelStyle:
                        TextStyle(color: Color(0xff74d7df), fontSize: 15),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff95989a), width: 1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff95989a), width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 85,
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 15),
                child: _allChips(),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: TextField(
                  controller: breedController,
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Breed',
                    labelStyle:
                        TextStyle(color: Color(0xff74d7df), fontSize: 15),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff95989a), width: 1),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff95989a), width: 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Radio(
                          groupValue: genderSelector,
                          value: 1,
                          onChanged: (val) {
                            setState(() {
                              genderSelector = val;
                            });
                          },
                          activeColor: Color(0xff74d7df),
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            color: Color(0xff808285),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/signup_arrow1.png',
                          height: 15,
                          width: 15,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          groupValue: genderSelector,
                          value: 2,
                          onChanged: (val) {
                            setState(() {
                              genderSelector = val;
                            });
                          },
                          activeColor: Color(0xff74d7df),
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            color: Color(0xff808285),
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          'assets/signup_arrow1.png',
                          height: 15,
                          width: 15,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'Weight',
                  style: TextStyle(
                    color: Color(0xff74d7df),
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '3.6',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      slider.toStringAsFixed(1),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Slider(
                  value: slider,
                  min: 3.5,
                  max: 7,
                  onChanged: (val) {
                    setState(() {
                      slider = val;
                    });
                  },
                  activeColor: Color(0xff74d7df),
                  inactiveColor: Color(0xff707070),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OnboardingOneScreen()));
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
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OnboardingOneScreen()));
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
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: <Widget>[
                    Text(
                      'By tapping Sign up, you agree to our',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff808285).withOpacity(0.8),
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Term of Service & Privacy Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff58595b),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }

  _allChips() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: chips.length,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(right: 10),
          child: Column(
            children: <Widget>[
              ActionChip(
                onPressed: () {
                  setState(() {
                    selected = index;
                  });
                },
                padding: EdgeInsets.zero,
                labelPadding: EdgeInsets.zero,
                label: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: index == selected ? Color(0xff74d7df) : Colors.white,
                  ),
                  padding: EdgeInsets.all(5),
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    chips[index].image,
                    color:
                    index == selected ? Colors.black : Color(0xff707070).withOpacity(0.3),
                  ),
                ),
              ),
              SizedBox(height: 5),
              AutoSizeText(
                chips[index].name,
                style: TextStyle(
                  color: Color(0xff707070),
                  fontSize: 16,
                ),
                maxLines: 1,
                minFontSize: 8,
              ),
            ],
          ),
        );
      },
    );
  }
}

class SignUpChip {
  String image;
  String name;

  SignUpChip(this.image, this.name);
}
