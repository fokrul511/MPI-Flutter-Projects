// import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/MPI (1).jpg'},
    {"id": 2, "image_path": 'assets/images/MPI (2).jpg'},
    {"id": 3, "image_path": 'assets/images/MPI (3).jpg'},
    {"id": 4, "image_path": 'assets/images/MPI (4).jpg'},
    {"id": 5, "image_path": 'assets/images/MPI (5).jpg'},
  ];

  final CarouselController carouselController = CarouselController();
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {},
                child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                            item['image_path'],
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      aspectRatio: 1.9,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentindex = index;
                        });
                      },
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
