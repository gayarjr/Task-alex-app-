import 'package:flutter/material.dart';

class PaymentProduct extends StatelessWidget {
  const PaymentProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF1F1F1),
        borderRadius: BorderRadius.circular(15),
      ),
      width: 340,
      child: Column(
        children: [
          Column(
            spacing: 3,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("SubTotal:", style: TextStyle(color: Color(0xff153E73))),
                  SizedBox(width: 10),
                  Text("85.00 usd", style: TextStyle(color: Color(0xff153E73))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Envio::", style: TextStyle(color: Color(0xff153E73))),
                  SizedBox(width: 10),
                  Text("Gratis", style: TextStyle(color: Color(0xff153E73))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Total:", style: TextStyle(color: Color(0xff5117AC))),
                  Text("85.00 usd", style: TextStyle(color: Color(0xff5117AC))),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            height: 49,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  Color(0xff462697),
                  Color(0xff3B74AC),
                  Color(0xff30BFBF),
                ],
              ),
            ),
            child: Center(
              child: Text(
                "Realizar compra",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
