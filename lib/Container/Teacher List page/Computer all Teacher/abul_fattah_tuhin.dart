import 'package:flutter/material.dart';
import 'package:pactics_1/Container/Teacher%20List%20page/list_design.dart';
import 'package:url_launcher/url_launcher.dart';

class AbulFattahTuhin extends StatefulWidget {
  const AbulFattahTuhin({Key? key}) : super(key: key);

  @override
  State<AbulFattahTuhin> createState() => _AbulFattahTuhinState();
}

class _AbulFattahTuhinState extends State<AbulFattahTuhin> {
  Uri fattahCall = Uri(scheme: 'tel', path: '০১৬৭০৪২২২০৫');
  Uri fatta_email = Uri(scheme: 'mailto', path: 'tuhin.csedu@gmail.com');
  Fattah_call() async {
    await launchUrl(fattahCall);
  }

  Fatta_email() async {
    await launchUrl(fatta_email);
  }

  @override
  Widget build(BuildContext context) {
    return ComputerDepTech(
      photo: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(
                'https://file.portal.gov.bd/uploads/6cb952ef-d363-48ac-9bdf-b1ec17db7553//623/d85/550/623d8555072bf269986028.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
      ),
      name: 'এস.এম.আবুল ফাত্তাহ্ তুহিন',
      qulifiction: 'ইনস্ট্রাক্টর- টেক/কম্পিউটার\n(বিভাগীয় প্রধান-২য় শিফট)',
      button_call: IconButton(
        onPressed: () {
          Fattah_call();
        },
        icon: const Icon(
          Icons.call,
          color: Colors.blue,
          size: 30.0,
        ),
      ),
      button_email: IconButton(
        onPressed: () {
          Fatta_email();
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
