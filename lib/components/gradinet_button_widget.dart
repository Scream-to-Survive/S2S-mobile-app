import 'package:flutter/material.dart';
import 'package:s2s/utilities/constants.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    @required this.label,
    @required this.onPressed,
  });

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 60,
      padding: EdgeInsets.all(0),
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            gradient: kGradient,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Align(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
      onPressed: () => onPressed,
    );
  }
}
