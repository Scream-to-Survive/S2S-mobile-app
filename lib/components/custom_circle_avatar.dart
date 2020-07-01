import 'package:flutter/material.dart';
import 'package:s2s/utilities/constants.dart';

class CustomCircleAvatar extends StatelessWidget {
  final AssetImage assetImage;
  final Color borderColor;
  const CustomCircleAvatar({
    this.assetImage = avatarPlaceholder,
    this.borderColor = kPrimaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: borderColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: CircleAvatar(
        backgroundColor: kPrimaryColor,
        backgroundImage: assetImage,
      ),
    );
  }
}
