import 'package:flutter/material.dart';
import 'package:woof_fini/screens/home_screen.dart';
import 'package:woof_fini/screens/pre_splash_screen.dart';
import 'package:woof_fini/screens/splash_screen.dart';
import 'package:woof_fini/screens/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(

      ),
      debugShowCheckedModeBanner: false,
      title: 'WOOF FINI',
      routes: {
        '/SplashScreen': (context) => SplashScreen(),
        '/WelcomeScreen': (context) => WelcomeScreen(),
        '/HomeScreen': (context) => HomeScreen(),
      },
      home: PreSplashScreen(),
    );
  }


}
