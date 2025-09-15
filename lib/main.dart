import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:task/Product_Content/pages/widgets/product.dart';
import 'package:task/edit.dart';
import 'package:task/home/pages/home_page.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Home(),
    );
  }
}
