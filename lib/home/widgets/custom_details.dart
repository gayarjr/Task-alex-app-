import 'package:flutter/material.dart';

class CustomDetails extends StatelessWidget {
  const CustomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "\$12.58",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 3),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 251, 251),
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(
              Icons.chevron_right,
              color: Color(0xff153E73),
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
