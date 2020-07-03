import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:s2s/components/custom_alert_button.dart';
import 'package:s2s/components/custom_app_bar.dart';
import 'package:s2s/components/custom_bottom_navigation_bar.dart';
import 'package:s2s/components/custom_circle_avatar.dart';
import 'package:s2s/components/custom_drawer.dart';
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

//      appBar: AppBar(
//        elevation: 0,
//        backgroundColor: Colors.transparent,
//        leading: IconButton(
//          onPressed: () => _scaffoldKey.currentState.openDrawer(),
//          icon: CustomCircleAvatar(),
//        ),
//      ),
      drawer: CustomDrawer(),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//      floatingActionButton: CustomAlertButton(),
//      bottomNavigationBar: CustomBottomNavigationBar(),

      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(22, 42),
              zoom: 5,
            ),
            zoomControlsEnabled: false,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            color: Colors.white38,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CustomAppBar(
                onPressed: () => _scaffoldKey.currentState.openDrawer(),
              ),
              CustomBottomNavigationBar(),
            ],
          )
        ],
      ),
    );
  }
}
