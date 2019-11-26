import 'package:flutter/material.dart';
import 'package:woof_fini/screens/history_screen.dart';
import 'package:woof_fini/screens/home_screen.dart';
import 'package:woof_fini/screens/notification_screen.dart';
import 'package:woof_fini/screens/pet_food_screen.dart';
import 'package:woof_fini/screens/pet_friendly_services_screen.dart';
import 'package:woof_fini/screens/pet_services_screen.dart';
import 'package:woof_fini/screens/pop_up_screen.dart';
import 'package:woof_fini/screens/post_screen.dart';
import 'package:woof_fini/screens/pre_splash_screen.dart';
import 'package:woof_fini/screens/user_profile_screen.dart';
import 'package:woof_fini/screens/search_screen.dart';
import 'package:woof_fini/screens/settings_screen.dart';
import 'package:woof_fini/screens/signup_one_screen.dart';
import 'package:woof_fini/screens/video_play_screen.dart';

import 'camera_screen.dart';
import 'change_password_screen.dart';
import 'deals_screen.dart';
import 'event_and_competition_screen.dart';
import 'gmap_place_screen.dart';
import 'leaderboard_screen.dart';

class DefaultScreen extends StatefulWidget {
  @override
  _DefaultScreenState createState() => _DefaultScreenState();
}

class _DefaultScreenState extends State<DefaultScreen> {
  @override
  Widget build(BuildContext context) {
    return _mainScreen();
  }

  _mainScreen(){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screens'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 20),
          _screen('SignUpOne', SignUpOneScreen()),
          SizedBox(height: 20),
          _screen('PreSplash', PreSplashScreen()),
          SizedBox(height: 20),
          _screen('Profile', UserProfileScreen()),
          SizedBox(height: 20),
          _screen('Home', HomeScreen()),
          SizedBox(height: 20),
          _screen('Search', SearchScreen()),
          SizedBox(height: 20),
          _screen('Notification', NotificationScreen()),
          SizedBox(height: 20),
          _screen('Events & Competition', EventAndCompetition()),
          SizedBox(height: 20),
          _screen('Post', PostScreen()),
          SizedBox(height: 20),
          _screen('PopUp', PopUpScreen()),
          SizedBox(height: 20),
          _screen('History', HistoryScreen()),
          SizedBox(height: 20),
          _screen('Deals', DealsScreen()),
          SizedBox(height: 20),
          _screen('Pet Services', PetServicesScreen()),
          SizedBox(height: 20),
          _screen('Pet Friendly Services', PetFriendlyServicesScreen()),
          SizedBox(height: 20),
          _screen('GMAP Place', GmapPlaceScreen()),
          SizedBox(height: 20),
          _screen('Pet Food', PetFoodScreen()),
          SizedBox(height: 20),
          _screen('Camera', CameraScreen()),
          SizedBox(height: 20),
          _screen('Leaderboard', LeaderboardScreen()),
          SizedBox(height: 20),
          _screen('Video Play', VideoPlayScreen()),
          SizedBox(height: 20),
          _screen('Change Password', ChangePasswordScreen()),
          SizedBox(height: 20),
          _screen('Settings', SettingsScreen()),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  _screen(String name, Widget screen){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (ctxt)=> screen));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              '$name Screen',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
