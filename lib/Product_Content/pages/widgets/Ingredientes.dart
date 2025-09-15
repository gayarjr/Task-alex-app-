import 'package:flutter/material.dart';

class Ingredientes extends StatelessWidget {
  const Ingredientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Ingredientes",
              style: TextStyle(fontSize: 16, color: Color(0xff153E73)),
            ),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 104,
                        width: 91,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Image.asset(
                            "/The-Mack-Burger-recipe-scaled.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Arrachera",
                        style: TextStyle(
                          color: Color(0xff9A9A9A),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
