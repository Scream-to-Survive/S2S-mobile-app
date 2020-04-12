import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s2s/screens/login_page.dart';
import 'package:s2s/utilities/constants.dart';

//#525252
//#3d72b4
//colors: [Color(0xff3498db), Color(0xff2c3e50)]),

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: kGradient,
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                  tag: 'hero',
                  child: Icon(
                    Icons.crop_square,
                    size: 200,
                  ),
                ),
                Text(
                  'Welcome!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 35,
                  ),
                  child: Text(
                    'Scream to Survive application can save your life, share it with your loved ones and help protecting them during disasters.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'BalooDa2',
                      fontSize: 18,
                      height: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                Container(
                  margin: EdgeInsets.all(35),
                  child: RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ),
                      );
                    },
                    fillColor: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Get started',
                      style: TextStyle(
                        color: kColor2,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )

//                RaisedButton(
//                  onPressed: () {},
//                  child: Text(
//                    'Get started',
//                    style: TextStyle(
//                      fontSize: 24,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.black,
//                    ),
//                  ),
//                  padding: EdgeInsets.all(15),
//                  color: Colors.white,
//                ),
              ],
            ),
          )),
    );
  }
}
