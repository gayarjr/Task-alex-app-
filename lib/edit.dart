import 'package:flutter/material.dart';

/// Clip widget in wave shape shape
class Waveeeee extends CustomClipper<Path> {
  /// reverse the wave direction in vertical axis
  bool reverse;

  /// flip the wave direction horizontal axis
  bool flip;

  Waveeeee({this.reverse = false, this.flip = false});

  @override
  Path getClip(Size size) {
    if (!reverse && !flip) {
      // النقطة اللي في النص (خط مستقيم)
      Offset middlePoint = Offset(size.width * 0.5, size.height - 50);

      // موجة الشمال
      Offset firstEndPoint = Offset(size.width * 0.25, size.height - 50);
      Offset firstControlPoint = Offset(size.width * 0.1, size.height - 55);

      // موجة اليمين
      Offset secondEndPoint = Offset(size.width, size.height - 50);
      Offset secondControlPoint = Offset(size.width * 0.9, size.height - 30);

      final path = Path()
        ..lineTo(0.0, size.height) // نزل شمال لتحت
        // موجة شمال
        ..quadraticBezierTo(
          firstControlPoint.dx,
          firstControlPoint.dy,
          firstEndPoint.dx,
          firstEndPoint.dy,
        )
        // خط مستقيم لحد النص
        ..lineTo(middlePoint.dx, middlePoint.dy)
        // موجة يمين
        ..quadraticBezierTo(
          secondControlPoint.dx,
          secondControlPoint.dy,
          secondEndPoint.dx,
          secondEndPoint.dy,
        )
        // فوق يمين
        ..lineTo(size.width, 0.0)
        ..close();

      return path;
    } else if (!reverse && flip) {
      Offset firstEndPoint = Offset(size.width * .5, size.height - 20);
      Offset firstControlPoint = Offset(size.width * .25, size.height - 10);
      Offset secondEndPoint = Offset(size.width, size.height);
      Offset secondControlPoint = Offset(size.width * .75, size.height - 30);

      final path = Path()
        ..lineTo(0.0, size.height - 30)
        ..quadraticBezierTo(
          firstControlPoint.dx,
          firstControlPoint.dy,
          firstEndPoint.dx,
          firstEndPoint.dy,
        )
        ..quadraticBezierTo(
          secondControlPoint.dx,
          secondControlPoint.dy,
          secondEndPoint.dx,
          secondEndPoint.dy,
        )
        ..lineTo(size.width, 0.0)
        ..close();
      return path;
    } else if (reverse && flip) {
      Offset firstEndPoint = Offset(size.width * .5, 20);
      Offset firstControlPoint = Offset(size.width * .25, 10);
      Offset secondEndPoint = Offset(size.width, 0);
      Offset secondControlPoint = Offset(size.width * .75, 30);

      final path = Path()
        ..lineTo(0, 30)
        ..quadraticBezierTo(
          firstControlPoint.dx,
          firstControlPoint.dy,
          firstEndPoint.dx,
          firstEndPoint.dy,
        )
        ..quadraticBezierTo(
          secondControlPoint.dx,
          secondControlPoint.dy,
          secondEndPoint.dx,
          secondEndPoint.dy,
        )
        ..lineTo(size.width, size.height)
        ..lineTo(0.0, size.height)
        ..close();
      return path;
    } else {
      Offset firstEndPoint = Offset(size.width * .5, 20);
      Offset firstControlPoint = Offset(size.width * .25, 30);
      Offset secondEndPoint = Offset(size.width, 50);
      Offset secondControlPoint = Offset(size.width * .75, 10);

      final path = Path()
        ..quadraticBezierTo(
          firstControlPoint.dx,
          firstControlPoint.dy,
          firstEndPoint.dx,
          firstEndPoint.dy,
        )
        ..quadraticBezierTo(
          secondControlPoint.dx,
          secondControlPoint.dy,
          secondEndPoint.dx,
          secondEndPoint.dy,
        )
        ..lineTo(size.width, size.height)
        ..lineTo(0.0, size.height)
        ..close();
      return path;
    }
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
