import 'package:flutter/material.dart';
import 'package:s2s/components/header_widget.dart';
import 'package:s2s/components/text_input.dart';

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
////        flexibleSpace: Container(
////          decoration: BoxDecoration(
////            gradient: kGradient,
////          ),
////        ),
//      backgroundColor: Colors.transparent,
//        elevation: 0,
//      ),

      body: Column(
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
              vertical: 20.0,
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
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      MyTextInput(
                        controller: _emailController,
                        hint: 'email',
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
                        hint: 'Password',
                        isPassword: true,
                        keyboardType: TextInputType.text,
                        icon: Icon(Icons.lock),
                        onChanged: () {
                          //
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
