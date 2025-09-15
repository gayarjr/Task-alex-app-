import 'package:flutter/material.dart';
import 'package:task/home/pages/Recomendados.dart';
import 'package:task/home/pages/appbar.dart';
import 'package:task/home/pages/explorer_categoriz.dart';
import 'package:task/home/pages/products_popular.dart';
import 'package:task/navifgation_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Color bgColor = Colors.white;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: const CustomAppBar(),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              "Explorar categorias",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff153E73),
              ),
            ),
          ),
          ExplorerCategoriz(),
          SizedBox(height: 13),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Products Poplur",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff153E73),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: ProductsPopular(),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Recomendados",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xff153E73),
              ),
            ),
          ),
          SizedBox(height: 20),
          Recomendados(),
          SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: NavigationBarr(),
    );
  }
}
