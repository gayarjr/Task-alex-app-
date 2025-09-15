import 'package:flutter/material.dart';

class CustomCirclar extends StatelessWidget {
  const CustomCirclar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 95,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: Center(
        child: ClipOval(
          child: Image.asset(
            "/istockphoto-1309352410-612x612.jpg",
            width: 95,
            height: 95,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
