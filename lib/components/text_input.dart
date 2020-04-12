
import 'package:flutter/material.dart';
import 'package:s2s/utilities/constants.dart';

class MyTextInput extends StatelessWidget {
  MyTextInput({
    @required this.controller,
    @required this.hint,
    @required this.isPassword,
    @required this.keyboardType,
    @required this.icon,
    @required this.onChanged,
  });

  final TextEditingController controller;
  final bool isPassword;
  final String hint;
  final TextInputType keyboardType;
  final Function onChanged;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: kColor2,
      elevation: 3,
      borderRadius: BorderRadius.circular(15),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword,
        keyboardType: keyboardType,
        cursorColor: kColor1,
        decoration: InputDecoration(
          suffixIcon: icon,
          hintText: hint,
          labelStyle: TextStyle(
            color: kColor1,
          ),
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
