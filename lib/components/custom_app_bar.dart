import 'package:flutter/material.dart';
import 'package:s2s/components/custom_circle_avatar.dart';
import 'package:s2s/utilities/constants.dart';

class CustomAppBar extends StatelessWidget {
  final Function onPressed;
  CustomAppBar({@required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: .5 * MediaQuery.of(context).size.height,
      padding: EdgeInsets.only(
        left: 10,
        top: 10 + MediaQuery.of(context).padding.top,
      ),
      decoration: BoxDecoration(
        color: Colors.white38.withOpacity(.9),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Hero(
                tag: 'userPicture',
                child: CustomCircleAvatar(),
              ),
              onPressed: onPressed,
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'Latest Feed'.toUpperCase(),
              textAlign: TextAlign.start,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
