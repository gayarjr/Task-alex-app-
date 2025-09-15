import 'package:flutter/material.dart';
import 'package:task/details/widgets/custom_circlar.dart';
import 'package:task/details/widgets/details.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: (context, index) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    width: 241,
                    height: 289,
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        CustomCirclar(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 13),
                            const Text(
                              "Big Burger Queso",
                              style: TextStyle(
                                fontSize: 19,
                                color: Color(0xff153E73),
                              ),
                            ),
                            SizedBox(height: 13),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 13,
                              ),
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et harum inventore ipsam  nam necessitatibus nemo pariatur provident.",
                                maxLines: 2,
                                style: TextStyle(fontSize: 9),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Details(),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: -2,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffE5676D),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Icon(
                    Icons.delete_outline,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
