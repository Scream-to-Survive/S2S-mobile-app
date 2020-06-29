import 'package:flutter/material.dart';
import 'package:s2s/utilities/constants.dart';

class MyTextFormField extends StatelessWidget {
//  final FocusNode focusNode;
  final TextEditingController controller;
  final String label;
  final Function onChanged;
  final bool obscuredText;
  final TextInputType keyboardType;
  final Widget validationSuffix;
  final FormFieldValidator validator;

  MyTextFormField(
      {@required this.controller,
//      this.focusNode,
      @required this.label,
      this.onChanged,
      this.obscuredText = false,
      this.keyboardType = TextInputType.text,
      this.validationSuffix,
      this.validator});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return TextFormField(
      controller: controller,
//      focusNode: focusNode,
      obscureText: obscuredText,
      onChanged: onChanged,
      keyboardType: keyboardType,
      validator: validator,
      style: TextStyle(
        color: kColor2,
        fontSize: height <= 650 ? height / 40 : 18,
        letterSpacing: 1.2,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
//          color: focusNode.hasFocus ? kColor2 : Colors.grey,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kColor2,
          ),
          //  when the TextFormField in focused
        ),
        border: UnderlineInputBorder(),
        suffix: validationSuffix,
      ),
      cursorColor: kColor2,
    );
  }
}
