import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:pactics_1/pages/home_page.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({Key? key}) : super(key: key);

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          decoration: PageDecoration(imageFlex: 1),
          title: 'Demo Text',
          body: 'this is body',
          image: Image.network(
            'https://dailydeshtottoh.com/wp-content/uploads/2023/09/11.-3.jpg',
          ),
        ),
        PageViewModel(
          title: 'Demo Text',
          body: 'this is body',
          image: Image.network(
            'https://polytechnicbd.com/wp-content/uploads/2020/01/m-aca2.jpg',
          ),
        ),
      ],
      onDone: () {
        Navigator.of(context).push(CupertinoPageRoute(
          builder: (context) => const HomePage(),
        ));
      },
      done: Text('Done'),
      showNextButton: true,
      showSkipButton: true,
      nextStyle: ButtonStyle(),
      next: const Text('Next'),
      skip: Text('Skip'),
    );
  }
}
