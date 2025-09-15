import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:task/Product_Content/pages/widgets/product.dart';
import 'package:task/home/widgets/custom_details.dart';
import 'package:task/home/widgets/custom_pizza_image.dart';

class ProductsPopular extends StatelessWidget {
  const ProductsPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 219,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(1.0),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Product()),
                    );
                  },
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      width: 174,
                      padding: const EdgeInsets.all(1),
                      child: Column(
                        children: [
                          SizedBox(height: 37),
                          CustomPizzaImage(),
                          SizedBox(height: 14),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Product Name",
                                maxLines: 1,
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                "loremm fsgsfsgrgsfsfjslf",
                                maxLines: 1,
                                style: TextStyle(fontSize: 7),
                              ),
                            ],
                          ),
                          SizedBox(height: 1),
                          CustomDetails(),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 20,
                  child: Icon(IconlyBold.heart, color: Colors.red, size: 20),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
