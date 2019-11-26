import 'package:flutter/material.dart';
import 'package:woof_fini/screens/change_password_screen.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              'Done',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Edit Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/img_profile.jpg',
                      fit: BoxFit.cover,
                      height: 110,
                      width: 110,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Change profile photo',
                  style: TextStyle(
                    color: Color(0xff74d7df),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            FlatButton(
              padding: EdgeInsets.zero,
              child: ListTile(
                onTap: () {},
                leading: Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'Bold Pilot',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ), // Username
            SizedBox(height: 12),
            FlatButton(
              padding: EdgeInsets.zero,
              child: ListTile(
                onTap: () {},
                leading: Text(
                  'Email',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'darrell_bailey@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ), // Email
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: _type('assets/dog.png', 'Dogs', Color(0xff393939)),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {},
                    child:
                        _type('assets/set_cat.png', 'Cats', Color(0xff74d7df)),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {},
                    child: _type(
                        'assets/set_bird.png', 'Birds', Color(0xff393939)),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {},
                    child: _type(
                        'assets/set_rabbit.png', 'Bunnies', Color(0xff393939)),
                  ),
                  SizedBox(width: 15),
                  GestureDetector(
                    onTap: () {},
                    child: _type(
                        'assets/set_fish.png', 'Others', Color(0xff393939)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            FlatButton(
              padding: EdgeInsets.zero,
              child: ListTile(
                onTap: () {},
                leading: Text(
                  'Breed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'Scottish fold',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ), // Breed
            SizedBox(height: 12),
            FlatButton(
              padding: EdgeInsets.zero,
              child: ListTile(
                onTap: () {},
                leading: Text(
                  'Gender',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'Male',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ), // Gender
            SizedBox(height: 12),
            FlatButton(
              padding: EdgeInsets.zero,
              child: ListTile(
                onTap: () {},
                leading: Text(
                  'Date of birth',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  '16/04/1988',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ), // DOB
            SizedBox(height: 12),
            FlatButton(
              padding: EdgeInsets.zero,
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChangePasswordScreen()));
                },
                leading: Text(
                  'Change Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  '**************',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ), // Change Password
            SizedBox(height: 12),
            FlatButton(
              padding: EdgeInsets.zero,
              child: ListTile(
                onTap: () {},
                leading: Text(
                  'Location',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  'Quezon City',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ), //
            SizedBox(height: 12), // Location
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Description',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ],
            ),
            SizedBox(height: 12),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
                maxLines: 6,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Color(0xff393939), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Color(0xff393939), width: 2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  color: Color(0xff74d7df),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Container(
                    height: 50,
                    width: 110,
                    alignment: Alignment.center,
                    child: Text(
                      'Log out',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _type(String img, String name, Color color) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: color,
          ),
          padding: EdgeInsets.all(5),
          height: 50,
          width: 50,
          child: Image.asset(
            img,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
