import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color(0xff5117AC),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(Icons.add, color: Colors.white, size: 35),
    );
  }
}
