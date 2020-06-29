import 'package:flutter/material.dart';
import 'package:s2s/utilities/constants.dart';

class RightButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  RightButton({
    @required this.text,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: 130,
      height: height < 650 ? 40 : 50,
      child: MaterialButton(
        color: kColor2,
        elevation: 6,
        highlightElevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.white,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}


//offset: Offset(width * .5 - 65, 0),
