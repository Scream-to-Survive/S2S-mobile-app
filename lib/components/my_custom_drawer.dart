import 'package:flutter/material.dart';
import 'package:s2s/utilities/constants.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: kColor2),
            currentAccountPicture: Hero(
              tag: 'userPicture',
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/profilePicturePlaceholder.jpg',
                ),
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
