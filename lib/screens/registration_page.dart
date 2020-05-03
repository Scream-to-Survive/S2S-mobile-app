import 'package:flutter/material.dart';

import 'package:s2s/components/gradinet_button_widget.dart';
import 'package:s2s/components/header_widget.dart';
import 'package:s2s/components/stepper_widget.dart' as myStepper;
import 'package:s2s/components/text_input.dart';
import 'package:s2s/utilities/constants.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  double _heightProportion = .65;
  double _containerHeightProportion = .15;
  int _stepIndex = 0;
  bool _isActive1 = true;
  bool _isActive2 = false;
  myStepper.StepState _stepState1 = myStepper.StepState.indexed;

  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
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
                label: 'Register',
              ),
              Container(
                width: width,
                height: height,
                child: myStepper.MyStepper(
                  type: myStepper.StepperType.horizontal,
                  currentStep: _stepIndex,
                  onStepContinue: () {
                    if (_stepIndex < 1) {
                      setState(() {
                        _stepIndex++;
                        _isActive2 = true;
                        _stepState1 = myStepper.StepState.complete;
                      });
                    }
                  },
                  onStepCancel: () {
                    if (_stepIndex > 0) {
                      setState(() {
                        _stepIndex--;
                        _isActive2 = false;
                        _stepState1 = myStepper.StepState.indexed;
                      });
                    }
                  },
                  steps: [
                    myStepper.Step(
                      isActive: _isActive1,
                      state: _stepState1,
                      title: Text('Personal Information'),
                      content: Form(
                        child: Column(
                          children: <Widget>[
                            MyTextInput(
                              controller: _firstnameController,
                              label: 'Firstname',
                              hint: 'Firstname',
                              isPassword: false,
                              onChanged: () {},
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MyTextInput(
                              controller: _lastnameController,
                              label: 'Lastname',
                              hint: 'Lastname',
                              isPassword: false,
                              onChanged: () {},
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MyTextInput(
                              controller: _lastnameController,
                              label: 'Lastname',
                              hint: 'Lastname',
                              isPassword: false,
                              onChanged: () {},
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MyTextInput(
                              controller: _lastnameController,
                              label: 'Lastname',
                              hint: 'Lastname',
                              isPassword: false,
                              onChanged: () {},
                            ),

                          ],
                        ),
                      ),
                    ),
                    myStepper.Step(
                      isActive: _isActive2,
                      title: Text('Medical Information'),
                      content: Text('Medical Information'),
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
