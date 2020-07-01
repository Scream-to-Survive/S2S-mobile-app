import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s2s/utilities/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: .1,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        child: BottomNavigationBar(
          selectedItemColor: kPrimaryColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.my_location,
              ),
              title: Text(
                'Location',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                null,
              ),
              title: Text(
                '',
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_active,
              ),
              title: Text(
                'Notification',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
