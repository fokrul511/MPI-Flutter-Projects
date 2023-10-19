import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

// import 'package:url_launcher/url_launcher.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  Uri dialnumber = Uri(scheme: 'tel', path: '+8801875091001');
  Uri email = Uri(scheme: 'mailto', path: 'moulvibazarpolytechnic@gmail.com');

  callnumber() async {
    await launchUrl(dialnumber);
  }

  emailsend() async {
    await launchUrl(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Principle'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              maxRadius: 80.0,
              backgroundImage: NetworkImage(
                'https://file.portal.gov.bd/files/mpi.moulvibazar.gov.bd/officer_list/eacc1c00_f44a_43e3_a99e_90361b8da41e/5e0bcf43a88020f4cc8420cdc1c3206d.png',
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            '	প্রকৌশলী মিজানুর রহমান',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '	উপাধ্যক্ষ ও ভারপ্রাপ্ত অধ্যক্ষ',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // FlutterPhoneDirectCaller.callNumber('+8801875091001');
                    // launchUrl('+8801875091001' as Uri);
                    callnumber();
                  },
                  child: Icon(
                    size: 20.0,
                    Icons.call,
                  ),
                ),
                SizedBox(
                  width: 80.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    // launchUrl('moulvibazarpolytechnic@gmail.com' as Uri);
                    emailsend();
                  },
                  child: Icon(
                    size: 20.0,
                    Icons.email,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
