import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../list_design.dart';

class FawjiyaAnika extends StatefulWidget {
  const FawjiyaAnika({Key? key}) : super(key: key);

  @override
  State<FawjiyaAnika> createState() => _FawjiyaAnikaState();
}

class _FawjiyaAnikaState extends State<FawjiyaAnika> {
  Uri anika = Uri(scheme: 'tel', path: '০১৯২১২২০৬৩৭');
  Uri anikae = Uri(scheme: 'mailto', path: '	anikacse10@gmail.com');

  AnikaC() async {
    await launchUrl(anika);
  }

  AnikaE() async {
    await launchUrl(anikae);
  }

  @override
  Widget build(BuildContext context) {
    return ComputerDepTech(
      photo: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(''),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
      ),
      name: 'ফাওজিয়া আনিকা',
      qulifiction: 'ইনস্ট্রাক্টর-টেক/কম্পিউটার,\n(বিভাগীয় প্রধান- ১ম ‍শিফট)',
      button_call: IconButton(
        onPressed: () {
          AnikaC();
        },
        icon: const Icon(
          Icons.call,
          color: Colors.blue,
          size: 30.0,
        ),
      ),
      button_email: IconButton(
        onPressed: () {
          AnikaE();
        },
        icon: const Icon(
          Icons.email,
          color: Colors.blue,
          size: 30.0,
        ),
      ),
    );
  }
}
