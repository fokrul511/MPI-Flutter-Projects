import 'package:flutter/material.dart';

class StudentHelp extends StatelessWidget {
  const StudentHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('student help and support page'),
            )
          ],
        ),
      ),
    );
  }
}
