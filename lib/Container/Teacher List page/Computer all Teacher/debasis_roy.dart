import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../list_design.dart';

class DebasisRoy extends StatefulWidget {
  const DebasisRoy({Key? key}) : super(key: key);

  @override
  _DebasisRoyState createState() => _DebasisRoyState();
}

class _DebasisRoyState extends State<DebasisRoy> {
  Uri call = Uri(scheme: 'tel', path: '০১৭৮৮৮০৯৮২৫');
  Uri email = Uri(scheme: 'mailto', path: '	devroymbpi2017@gmail.com');
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
                  'https://file.portal.gov.bd/files/mpi.moulvibazar.gov.bd/officer_list/e4f69ef0_b02c_4d85_afc7_2abbeea581d1/99cd7ca46f861fbd1d7776a811043e1d.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(100),
            color: Colors.white),
      ),
      name: 'দেবাশীষ রায়',
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
