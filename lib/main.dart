import 'package:flutter/material.dart';
import 'package:navegaciongarciaj0359/pages/auto_image_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyImageSlider(),
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
