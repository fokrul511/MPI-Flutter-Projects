import 'package:flutter/material.dart';

class ElectronicsTeacher extends StatefulWidget {
  const ElectronicsTeacher({Key? key}) : super(key: key);

  @override
  _ElectronicsTeacherState createState() => _ElectronicsTeacherState();
}

class _ElectronicsTeacherState extends State<ElectronicsTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Computer'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
