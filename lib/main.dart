import 'package:flutter/material.dart';
import 'package:s2s/screens/login_page.dart';
import 'package:s2s/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: SplashScreen(),
      home: LoginPage(),
    );
  }
}


