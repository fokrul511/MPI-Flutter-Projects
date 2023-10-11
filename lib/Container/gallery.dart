import 'package:flutter/material.dart';
import 'package:pactics_1/Container/Gallary/gallary_new.dart';
// import 'package:pactics_1/Container/Gallary/gallary_photo.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GallaryNew(),
    );
  }
}
