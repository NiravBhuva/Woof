import 'package:flutter/material.dart';
import 'package:woof_fini/screens/pre_splash_screen.dart';

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
      home: PreSplashScreen(),
    );
  }


}
