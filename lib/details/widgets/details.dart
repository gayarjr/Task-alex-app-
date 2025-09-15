import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffF1F1F1),
              ),
              child: Center(child: Icon(Icons.remove, size: 20)),
            ),
            Text(" 14"),
            SizedBox(width: 10),
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff5117AC),
              ),
              child: Center(
                child: Icon(Icons.add, size: 20, color: Colors.white),
              ),
            ),
          ],
        ),
        Text(
          "\$12.58",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xff039990),
          ),
        ),
      ],
    );
  }
}
