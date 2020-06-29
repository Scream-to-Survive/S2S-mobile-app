import 'package:flutter/material.dart';
import 'package:s2s/components/right_button.dart';
import 'package:s2s/components/text_input.dart';
import 'package:s2s/database/db_helper.dart';
import 'package:s2s/models/user.dart';
import 'package:s2s/utilities/constants.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  //keys
  final formKey = GlobalKey<FormState>();

  //suffix validators
  Widget firstnameSuffix = KNonValidSuffix;
  Widget lastnameSuffix = KNonValidSuffix;
  Widget emailSuffix = KNonValidSuffix;
  Widget phoneSuffix = KNonValidSuffix;
  Widget passwordSuffix = KNonValidSuffix;

  //text controllers
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode firstnameFN;
  FocusNode lastnameFN;
  FocusNode emailFN;
  FocusNode phoneNumberFN;
  FocusNode passwordFN;

  void validateRegExp(RegExp regExp, String value, Widget suffix) {
    if (value.isEmpty || !textRegExp.hasMatch(value)) {
      suffix = KNonValidSuffix;
    } else {
      suffix = kValidSuffix;
    }
  }

  @override
  void initState() {
    firstnameFN = FocusNode();
    lastnameFN = FocusNode();
    emailFN = FocusNode();
    phoneNumberFN = FocusNode();
    passwordFN = FocusNode();

    firstnameFN.addListener(() {
      setState(() {});
    });
    lastnameFN.addListener(() {
      setState(() {});
    });
    emailFN.addListener(() {
      setState(() {});
    });
    phoneNumberFN.addListener(() {
      setState(() {});
    });
    passwordFN.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    firstnameFN.dispose();
    lastnameFN.dispose();
    emailFN.dispose();
    phoneNumberFN.dispose();
    passwordFN.dispose();

    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: height,
            height: height - MediaQuery.of(context).padding.top,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: width * .9,
                    height: height * .7,
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
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Register',
                          style: TextStyle(
                            color: kColor2,
                            fontSize: height / 20,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Form(
                          key: formKey,
                          child: Column(
                            children: <Widget>[
                              MyTextFormField(
                                controller: firstnameController,
//                                focusNode: firstnameFN,
                                label: 'Firstname',
                                validationSuffix: firstnameSuffix,
                                onChanged: (value) {
                                  setState(() {
                                    if (value.isEmpty || !textRegExp.hasMatch(value)) {
                                      firstnameSuffix = KNonValidSuffix;
                                    } else {
                                      firstnameSuffix = kValidSuffix;
                                    }
                                  });
                                },
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Required';
                                  }
                                  if (!textRegExp.hasMatch(value)) {
                                    return 'This field should have only letters';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: height < 600 ? 0 : 8,
                              ),
                              MyTextFormField(
                                controller: lastnameController,
//                                focusNode: lastnameFN,
                                label: 'Lastname',
                                validationSuffix: lastnameSuffix,
                                onChanged: (value) {
                                  setState(() {
                                    if (value.isEmpty || !textRegExp.hasMatch(value)) {
                                      lastnameSuffix = KNonValidSuffix;
                                    } else {
                                      lastnameSuffix = kValidSuffix;
                                    }
                                  });
                                },
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Required';
                                  }
                                  if (!textRegExp.hasMatch(value)) {
                                    return 'This field should have only letters';
                                  } else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: height < 600 ? 0 : 8,
                              ),
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
                                    return 'Not valid email';
                                  } else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: height < 600 ? 0 : 8,
                              ),
                              MyTextFormField(
                                controller: phoneNumberController,
//                                focusNode: phoneNumberFN,
                                keyboardType: TextInputType.numberWithOptions(
                                  signed: false,
                                  decimal: false,
                                ),
                                label: 'Phone Number',
                                validationSuffix: phoneSuffix,
                                onChanged: (value) {
                                  setState(() {
                                    if (value.isEmpty || !numberRegExp.hasMatch(value)) {
                                      phoneSuffix = KNonValidSuffix;
                                    } else {
                                      phoneSuffix = kValidSuffix;
                                    }
                                  });
                                },
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Required';
                                  }
                                  if (!numberRegExp.hasMatch(value)) {
                                    return 'Not valid phone number';
                                  } else
                                    return null;
                                },
                              ),
                              SizedBox(
                                height: height < 650 ? 0 : 8,
                              ),
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
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Transform.translate(
                  offset: Offset(width * .5 - 65, 0),
                  child: RightButton(
                    text: 'Register',
                    onPressed: () async {
                      if (formKey.currentState.validate()) {
                        await DBHelper.db.newUser(
                          User(
                            firstname: firstnameController.value.text,
                            lastname: lastnameController.value.text,
                            email: emailController.value.text,
                            phoneNumber: phoneNumberController.text,
                            password: passwordController.value.text,
                            height: null,
                            gender: null,
                            address: null,
                            birthDate: null,
                            bloodType: null,
                            chronicDisease: null,
                            contacts: null,
                            location: null,
                            weight: null,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
