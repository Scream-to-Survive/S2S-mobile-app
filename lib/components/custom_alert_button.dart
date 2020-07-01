import 'package:flutter/material.dart';
import 'package:s2s/utilities/constants.dart';

class CustomAlertButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(
          left: 20,
          top: 20,
          right: 20,
          bottom: 10,
        ),
        width: 100,
        height: 90,
        decoration: BoxDecoration(
          color: kAlertColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          child: Icon(
            Icons.phone_in_talk,
            color: kAlertColor,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
