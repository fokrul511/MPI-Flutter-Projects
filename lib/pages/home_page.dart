import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pactics_1/Container/Teachers.dart';
import 'package:pactics_1/Container/about_pages.dart';
import 'package:pactics_1/Container/bteb_notice.dart';
import 'package:pactics_1/Container/collage_notice.dart';
import 'package:pactics_1/Container/job.dart';
import 'package:pactics_1/Container/staffs/staffs_list.dart';
import 'package:pactics_1/Container/team.dart';
import 'package:pactics_1/pages/dawer.dart';
import 'package:pactics_1/pages/slide_screen.dart';
import 'package:url_launcher/url_launcher.dart'
    as luncher; // import 'package:pactics_1/pages/slide_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    var buttonStyle = const ButtonStyle(
      minimumSize: MaterialStatePropertyAll(
        Size(double.infinity, 60),
      ),
    );
    return Scaffold(

      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SafeArea(
        child: drawer(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SliderL(),

              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => const AboutPages(),
                          ),
                        );
                      },
                      child: const Text(
                        'About',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => const Teachers(),
                          ),
                        );
                      },
                      child: const Text(
                        'Teacher',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {

                      },
                      child: const Text(
                        'Gallery',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {
                        print('Staffs');
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => const StaffsList(),
                          ),
                        );
                      },
                      child: const Text(
                        'Staffs',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.of(context).push(CupertinoPageRoute(
                            builder: (context) => const Collage()));
                      },
                      child: const Text(
                        'Collage Notice',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () async {
                        luncher.launchUrl(
                            Uri.parse(
                                'https://web.facebook.com/groups/MoulvibazarPolytechnicInstitute/'),
                            mode: luncher.LaunchMode.externalApplication);
                      },
                      child: const Text(
                        'Student help and support',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const JOb()));
                      },
                      child: const Text(
                        'JOB',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const BTEB()));
                      },
                      child: const Text(
                        'BTEB Notice',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.of(context).push(
                          CupertinoPageRoute(
                            builder: (context) => const Team(),
                          ),
                        );
                      },
                      child: const Text(
                        'Team',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ], //Before paste your code here
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
