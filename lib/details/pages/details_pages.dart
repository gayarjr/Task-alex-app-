import 'package:flutter/material.dart';
import 'package:task/details/widgets/add_item.dart';
import 'package:task/details/widgets/add_micasa.dart';
import 'package:task/details/widgets/appbar.dart';
import 'package:task/details/widgets/custom_circlar.dart';
import 'package:task/details/widgets/payment_product.dart';
import 'package:task/details/widgets/popular.dart';
import 'package:task/navifgation_bar.dart';

class DetailsPages extends StatelessWidget {
  const DetailsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppbarCarrito(),
      body: Column(
        children: [
          SizedBox(height: 16),
          Row(
            children: [
              SizedBox(width: 17),
              AddMicasa(),
              SizedBox(width: 8),
              AddMicasa(),
              SizedBox(width: 8),
              AddItem(),
            ],
          ),
          SizedBox(height: 20),
          Popular(),
          SizedBox(height: 40),
          PaymentProduct(),
        ],
      ),
      bottomNavigationBar: NavigationBarr(),
    );
  }
}
