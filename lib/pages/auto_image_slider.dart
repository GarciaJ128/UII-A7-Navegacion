import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyImageSlider extends StatefulWidget {
  const MyImageSlider({super.key});

  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  final myitems = [
    Image.asset('assets/imagen1.jpg'),
    Image.asset('assets/imagen2.png'),
    Image.asset('assets/imagen3.png'),
    Image.asset('assets/imagen4.png'),
    Image.asset('assets/imagen5.png'),
    Image.asset('assets/imagen6.png'),
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffe7dbe9),
        appBar: AppBar(
          title: const Text(
            'Slider auto de imágenes',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 3,
          backgroundColor: const Color(0xff361035),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 400,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  },
                ),
                items: myitems,
              ),
              AnimatedSmoothIndicator(
                activeIndex: myCurrentIndex,
                count: myitems.length,
                effect: WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 10,
                  dotColor: const Color(0xff7e327b),
                  activeDotColor: const Color(0xff361035),
                  paintStyle: PaintingStyle.fill,
                ),
              )
            ],
          ),
        ));
  }
}
