import 'package:flutter/material.dart';
import 'package:task/Product_Content/pages/widgets/Ingredientes.dart';
import 'package:task/edit.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 20),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text(
            "Hamburguesa especial",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          centerTitle: true,
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              ClipPath(
                clipper: Waveeeee(),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Image.asset(
                    "assets/6790b9b0e59da653ef5df1de_1737537968281.jpg",
                    width: double.infinity,
                    height: 359,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Descripción",
                        style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff153E73),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        maxLines: 3,
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff153E73),
                        ),
                      ),
                    ),
                    const Ingredientes(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 63,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xff462697),
                                  Color(0xff3B74AC),
                                  Color(0xff30BFBF),
                                ],
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Ordenar ahora",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),

                          const Text(
                            "\$12.58",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color(0xff153E73),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          Positioned(
            top: 289,
            right: 25,
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                color: Colors.pinkAccent,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: const Icon(Icons.favorite, color: Colors.white, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
