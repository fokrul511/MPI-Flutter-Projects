import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../list_design.dart';

class FahmidaAfroj extends StatefulWidget {
  const FahmidaAfroj({Key? key}) : super(key: key);

  @override
  _FahmidaAfrojState createState() => _FahmidaAfrojState();
}

class _FahmidaAfrojState extends State<FahmidaAfroj> {
  Uri call = Uri(scheme: 'tel', path: '০১৭৭৬৭৯৭৩৮৭');
  Uri email = Uri(scheme: 'mailto', path: 'fahmidaafroj@gmail.com');
  tcall() async {
    await launchUrl(call);
  }

  temail() async {
    await launchUrl(email);
  }

  @override
  Widget build(BuildContext context) {
    return ComputerDepTech(
      photo: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(
                'https://file.portal.gov.bd/files/mpi.moulvibazar.gov.bd/officer_list/42531f3b_2ff3_4fba_b8e3_a2b7b5a3972e/b81c457f78315e779dde8b6fd7605e62.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      name: '	ফাহমিদা আফরোজ',
      qulifiction: 'ইনস্ট্রাক্টর (টেক/কম্পিউটার)',
      button_call: IconButton(
        onPressed: () {
          tcall();
        },
        icon: const Icon(
          Icons.call,
          color: Colors.blue,
          size: 30.0,
        ),
      ),
      button_email: IconButton(
        onPressed: () {
          temail();
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
