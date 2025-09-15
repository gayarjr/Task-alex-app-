import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Recomendados extends StatelessWidget {
  const Recomendados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Card(
                margin: const EdgeInsets.only(left: 20, bottom: 10),
                color: Colors.white,
                elevation: 0.7,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  width: 240,
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      const SizedBox(width: 100),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Naturales",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.grey,
                                  ),
                                ),
                                Icon(
                                  IconlyBold.heart,
                                  color: Colors.red,
                                  size: 20,
                                ),
                              ],
                            ),
                            Text(
                              "Malteadas tropicales",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff153E73),
                                fontWeight: FontWeight.w900,
                              ),
                              maxLines: 1,
                            ),
                            Text(
                              "Elaborado con jugos naturales",
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                              maxLines: 1,
                            ),
                            const Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "19",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      251,
                                      251,
                                    ),
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 13,
                child: Image.asset("/www.png", width: 130, height: 95),
              ),
            ],
          );
        },
      ),
    );
  }
}
