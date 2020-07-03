import 'package:flutter/material.dart';
import 'package:s2s/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

//      home: RegistrationPage(),
//      home: LoginPage(),
//      home: SplashScreen(),
      home: HomeScreen(),
    );
  }
}
