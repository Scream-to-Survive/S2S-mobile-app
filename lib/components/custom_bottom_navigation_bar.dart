import 'package:flutter/material.dart';
import 'package:s2s/components/custom_alert_button.dart';
import 'package:s2s/utilities/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(color: Colors.black26, blurRadius: 10, spreadRadius: 3),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            child: Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      // padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.my_location,
                            color: kPrimaryColor,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'My Location',
                            style: TextStyle(
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(child: Container()),
                  Expanded(
                    child: MaterialButton(
                      // padding: EdgeInsets.all(10),
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.notifications,
                            color: kInactiveColor,
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Notifications',
                            style: TextStyle(
                              color: kInactiveColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
        CustomAlertButton(),
      ],
    );
  }
}
