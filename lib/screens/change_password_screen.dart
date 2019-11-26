import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Change Password'),
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Center(
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
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                      color: Color(0xff393939),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: TextField(
                    style: TextStyle(color: Color(0xff707070)),
                    decoration: InputDecoration(
                      hintText: 'Current Password',
                      hintStyle: TextStyle(color: Color(0xff707070)),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                      color: Color(0xff393939),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: TextField(
                    style: TextStyle(color: Color(0xff707070)),
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      hintStyle: TextStyle(color: Color(0xff707070)),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                      color: Color(0xff393939),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: TextField(
                    style: TextStyle(color: Color(0xff707070)),
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(color: Color(0xff707070)),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
