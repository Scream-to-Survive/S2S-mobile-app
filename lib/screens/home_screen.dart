import 'package:flutter/material.dart';
import 'package:s2s/components/custom_alert_button.dart';
import 'package:s2s/components/custom_bottom_navigation_bar.dart';
import 'package:s2s/components/custom_circle_avatar.dart';
import 'package:s2s/components/my_custom_drawer.dart';
import 'package:s2s/utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState.openDrawer(),
          icon: CustomCircleAvatar(),
        ),
      ),
      drawer: MyCustomDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomAlertButton(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
