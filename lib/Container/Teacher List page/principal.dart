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
              backgroundImage: AssetImage(
                'assets/images/principal.png',
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
                // CircleAvatar(
                //   backgroundColor: Colors.redAccent,
                //   maxRadius: 30.0,
                //   child: Icon(
                //     Icons.email,
                //     color: Colors.white,
                //     size: 40.0,
                //   ),
                // ),
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
                // CircleAvatar(
                //   backgroundColor: Colors.redAccent,
                //   maxRadius: 30.0,
                //   child: Icon(
                //     Icons.call,
                //     color: Colors.white,
                //     size: 40.0,
                //   ),
                // ),

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




// ElevatedButton(
//                   onPressed: () async {
//                     String email =
//                         Uri.encodeComponent("moulvibazarpolytechnic@gmail.com");
//                     String subject = Uri.encodeComponent("Hello sir");
//                     String body =
//                         Uri.encodeComponent("Hi! I'm Flutter Developer");
//                     print(subject); //output: Hello%20Flutter
//                     Uri mail =
//                         Uri.parse("mailto:$email?subject=$subject&body=$body");
//                     if (await launchUrl(mail)) {
//                       //email app opened
//                     } else {
//                       //email app is not opened
//                     }
//                   },
//                   child: Icon(Icons.email),
//                 )