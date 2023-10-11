import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
            height: 150.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 70.0,
                  fontFamily: 'Canterbury',
                ),
                child: Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ScaleAnimatedText(
                        'Computer',
                        textStyle: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ScaleAnimatedText(
                        'RAC',
                        textStyle: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ScaleAnimatedText(
                        'Electronics',
                        textStyle: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ScaleAnimatedText(
                        'Food',
                        textStyle: const TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
