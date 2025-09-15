import 'package:flutter/material.dart';

class CustomPizzaImage extends StatelessWidget {
  const CustomPizzaImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 4,
            offset: Offset((0), 1),
            color: Color(0xffC7E6F3),
          ),
        ],
        shape: BoxShape.circle,
      ),
      child: Center(
        child: ClipOval(
          child: Image.asset("/images.jfif.png", width: 120, height: 120),
        ),
      ),
    );
  }
}
