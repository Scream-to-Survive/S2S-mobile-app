import 'package:flutter/material.dart';
import 'package:s2s/utilities/constants.dart';

class LeftButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  LeftButton({
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
        color: kPrimaryColor,
        elevation: 6,
        highlightElevation: 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              Icons.chevron_left,
              color: Colors.white,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

//offset: Offset(-width * .5 + 65, 0),
