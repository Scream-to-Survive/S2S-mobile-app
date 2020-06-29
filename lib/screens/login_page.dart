import 'package:flutter/material.dart';
import 'package:s2s/components/right_button.dart';
import 'package:s2s/components/text_input.dart';
import 'package:s2s/utilities/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  //suffix validators
  Widget emailSuffix = KNonValidSuffix;
  Widget passwordSuffix = KNonValidSuffix;

  //text controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode emailFN;
  FocusNode passwordFN;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: height,
            height: height - MediaQuery.of(context).padding.top,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: width * .9,
                    height: height * .4,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: kColor2.withAlpha(20),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Log in',
                          style: TextStyle(
                            color: kColor2,
                            fontSize: height / 20,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(height: 20),
                        Form(
                          key: formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              MyTextFormField(
                                controller: emailController,
//                                focusNode: emailFN,
                                keyboardType: TextInputType.emailAddress,
                                label: 'email',
                                validationSuffix: emailSuffix,
                                onChanged: (value) {
                                  setState(() {
                                    if (value.isEmpty || !emailRegExp.hasMatch(value)) {
                                      emailSuffix = KNonValidSuffix;
                                    } else {
                                      emailSuffix = kValidSuffix;
                                    }
                                  });
                                },
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Required';
                                  }
                                  if (!emailRegExp.hasMatch(value)) {
                                    return 'Not valide email';
                                  } else
                                    return null;
                                },
                              ),
                              SizedBox(height: 20),
                              MyTextFormField(
                                controller: passwordController,
//                                focusNode: passwordFN,
                                label: 'Password',
                                obscuredText: true,
                                validationSuffix: passwordSuffix,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      if (value.isEmpty ||
                                          value.length < 7 ||
                                          !passwordRegExp.hasMatch(value)) {
                                        passwordSuffix = KNonValidSuffix;
                                      } else {
                                        passwordSuffix = kValidSuffix;
                                      }
                                    },
                                  );
                                },
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Required';
                                  }
                                  if (value.length < 7 || !passwordRegExp.hasMatch(value)) {
                                    return 'The password should contain Numbers and Caps';
                                  } else
                                    return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
//                SizedBox(
//                  height: 20,
//                ),
                Transform.translate(
                  offset: Offset(width * .5 - 65, 0),
                  child: RightButton(
                    text: 'Log in',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
//    return Scaffold(
//      body: SingleChildScrollView(
//        child: Container(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            children: <Widget>[
//              Header(
//                heightProportion: _heightProportion,
//                width: width,
//                height: height,
//                containerHeightProportion: _containerHeightProportion,
//                label: 'Scream to Survive',
//              ),
//              Padding(
//                padding: EdgeInsets.symmetric(
//                  horizontal: 30.0,
//                  vertical: 40.0,
//                ),
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  children: <Widget>[
//                    Text(
//                      'Log In',
//                      textAlign: TextAlign.left,
//                      style: TextStyle(
//                          fontSize: 30,
//                          color: Colors.blueGrey,
//                          fontWeight: FontWeight.w900,
//                          letterSpacing: 1.1),
//                    ),
//                    Form(
//                      child: Column(
//                        crossAxisAlignment: CrossAxisAlignment.stretch,
//                        children: <Widget>[
//                          SizedBox(
//                            height: 30,
//                          ),
////                          MyTextInput(
////                            controller: _emailController,
////                            label: 'Email',
////                            hint: 'example@mail.com',
////                            isPassword: false,
////                            keyboardType: TextInputType.emailAddress,
////                            icon: Icon(Icons.email),
////                            onChanged: () {
////                              //
////                            },
////                          ),
////                          SizedBox(
////                            height: 30,
////                          ),
////                          MyTextInput(
////                            controller: _passwordController,
////                            label: 'Password',
////                            hint: '********',
////                            isPassword: true,
////                            keyboardType: TextInputType.text,
////                            icon: Icon(Icons.lock),
////                            onChanged: () {
////                              //
////                            },
////                          ),
////                          SizedBox(
////                            height: 5,
////                          ),
//                          GestureDetector(
//                            onTap: () {
//                              //
//                              print('change password');
//                            },
//                            child: Text(
//                              'Forgot password',
//                              textAlign: TextAlign.right,
//                              style: TextStyle(
//                                fontSize: 13,
//                                color: kColor1,
//                              ),
//                            ),
//                          ),
//                          SizedBox(
//                            height: 50,
//                          ),
//                          GradientButton(
//                            label: 'Log in',
//                            onPressed: () {},
//                          ),
//                          SizedBox(
//                            height: 20,
//                          ),
//                          Row(
//                            mainAxisAlignment: MainAxisAlignment.center,
//                            children: <Widget>[
//                              Text(
//                                "Don't you have an account? ",
//                                style: TextStyle(
//                                  color: kColor2,
//                                ),
//                              ),
//                              GestureDetector(
//                                child: Text(
//                                  'Register',
//                                  style: TextStyle(
//                                    color: kColor1,
//                                  ),
//                                ),
//                                onTap: () {
//                                  Navigator.push(context,
//                                      MaterialPageRoute(builder: (context) => RegistrationPage()));
//                                },
//                              ),
//                            ],
//                          ),
//                        ],
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
  }
}
