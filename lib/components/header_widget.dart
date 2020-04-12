import 'package:flutter/material.dart';
import 'package:s2s/utilities/constants.dart';

//class Header extends StatelessWidget {
//  Header({
//    @required this.width,
//    @required this.height,
//    @required this.containerHeight,
//    @required this.heightProportion,
//    @required this.label,
//    @required this.shadowElevation,
//    this.icon,
//    this.iconPosition,
//  });
//
//  final double width;
//  final double height;
//  final double containerHeight;
//  final double heightProportion;
//  final String label;
//  final Widget icon;
//  final double iconPosition;
//  final double shadowElevation;
//
//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//      overflow: Overflow.visible,
//      children: <Widget>[
//        CustomPaint(
//          painter: BoxShadowPainter(
//            heightProportion: heightProportion,
//            shadowElevation: shadowElevation,
//          ),
//          child: ClipPath(
//            clipper: MyCustomClipper(heightProportion: heightProportion),
//            child: Container(
//              width: width,
//              height: height * containerHeight,
//              decoration: BoxDecoration(gradient: kGradient),
//              child: Align(
//                child: Text(
//                  label,
//                  style: TextStyle(
//                    fontSize: 36,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.white,
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ),
//        Positioned(
//          left: width / 2 - 50,
//          top: height * iconPosition - 50,
//          child: icon,
//        )
//      ],
//    );
//  }
//}



class Header extends StatelessWidget {
  Header({

    @required double heightProportion,
    @required this.width,
    @required this.height,
    @required double containerHeightProportion,
    @required this.label
  })  : _heightProportion = heightProportion,
        _containerHeightProportion = containerHeightProportion;

  final String label;
  final double _heightProportion;
  final double width;
  final double height;
  final double _containerHeightProportion;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BoxShadowPainter(
        heightProportion: _heightProportion,
        shadowElevation: 5,
      ),
      child: ClipPath(
        clipper: MyCustomClipper(heightProportion: _heightProportion),
        child: Container(
          width: width,
          height: height * _containerHeightProportion,
          decoration: BoxDecoration(
            gradient: kGradient,
          ),
          child: Align(
            child: Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  MyCustomClipper({@required this.heightProportion});
  final double heightProportion;
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * heightProportion);
    path.quadraticBezierTo(size.width / 2, size.height, 0, size.height * heightProportion);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}

class BoxShadowPainter extends CustomPainter {
  BoxShadowPainter({@required this.heightProportion, @required this.shadowElevation});
  final double heightProportion;
  final double shadowElevation;

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * heightProportion);
    path.quadraticBezierTo(size.width / 2, size.height, 0, size.height * heightProportion);
    path.close();
    canvas.drawShadow(
      path,
      Colors.black,
      shadowElevation,
      false,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
