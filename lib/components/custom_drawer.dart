import 'package:flutter/material.dart';
import 'package:s2s/components/custom_circle_avatar.dart';
import 'package:s2s/utilities/constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            currentAccountPicture: Hero(
              tag: 'userPicture',
              child: CustomCircleAvatar(
                borderColor: Colors.white,
              ),
            ),
            accountName: Text(
              'Aissa Serrar',
            ),
            accountEmail: Text(
              'aissa.serrar05@gmail.com',
              style: TextStyle(
                color: Colors.white54,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Setting'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
