import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:s2s/components/gradinet_button_widget.dart';
import 'package:s2s/components/header_widget.dart';
import 'package:s2s/components/text_input.dart';
import 'package:s2s/screens/registration_page.dart';
import 'package:s2s/utilities/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double _heightProportion = .8;
  double _containerHeightProportion = .22;

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
//      appBar: AppBar(
//        title: Text(
//          'this is Log In page',
//        ),
//        flexibleSpace: Container(
//          decoration: BoxDecoration(
//            gradient: kGradient,
//          ),
//        ),
//      backgroundColor: Colors.transparent,
//        elevation: 0,
//      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Header(
                heightProportion: _heightProportion,
                width: width,
                height: height,
                containerHeightProportion: _containerHeightProportion,
                label: 'Scream to Survive',
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 40.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Log In',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.1),
                    ),
                    Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          MyTextInput(
                            controller: _emailController,
                            label: 'Email',
                            hint: 'example@mail.com',
                            isPassword: false,
                            keyboardType: TextInputType.emailAddress,
                            icon: Icon(Icons.email),
                            onChanged: () {
                              //
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MyTextInput(
                            controller: _passwordController,
                            label: 'Password',
                            hint: '********',
                            isPassword: true,
                            keyboardType: TextInputType.text,
                            icon: Icon(Icons.lock),
                            onChanged: () {
                              //
                            },
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              //
                              print('change password');
                            },
                            child: Text(
                              'Forgot password',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 13,
                                color: kColor1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          GradientButton(
                            label: 'Log in',
                            onPressed: () {},
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Don't you have an account? ",
                                style: TextStyle(
                                  color: kColor2,
                                ),
                              ),
                              GestureDetector(
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    color: kColor1,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => RegistrationPage()));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
