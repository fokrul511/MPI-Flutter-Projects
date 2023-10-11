import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart' as luncher;

class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  Uri fokrul_call = Uri(scheme: 'tel', path: '+8801726032986');
  Uri fokrul_email = Uri(scheme: 'mailto', path: 'islamfokrul2002@gmail.com');
  Fokrul_call() async {
    await launchUrl(fokrul_call);
  }

  Fokrul_email() async {
    await launchUrl(fokrul_email);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Team'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: CircleAvatar(
                maxRadius: 100.0,
                backgroundImage: AssetImage('assets/images/Fokrul.jpeg'),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Text(
              'Fokrul Islam',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Computer Technology\nFlutter Developer',
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Fokrul_call();
                  },
                  icon: const Icon(
                    Icons.call,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Fokrul_email();
                  },
                  icon: const Icon(
                    Icons.email,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    luncher.launchUrl(
                        Uri.parse('https://web.facebook.com/humien.ahmad.9'),
                        mode: luncher.LaunchMode.externalApplication);
                  },
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 30.0,
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    luncher.launchUrl(Uri.parse('https://github.com/fokrul511'),
                        mode: luncher.LaunchMode.externalApplication);
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    size: 30.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
