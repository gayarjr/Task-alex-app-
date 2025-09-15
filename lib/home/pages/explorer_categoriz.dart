import 'package:flutter/material.dart';

class ExplorerCategoriz extends StatelessWidget {
  const ExplorerCategoriz({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffE9F3D4),
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.asset("/brrrrrr.jfif.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "Tacos",
                  style: TextStyle(color: Color(0xff153E73), fontSize: 12),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
