import 'package:flutter/material.dart';

class NonTechTeacher extends StatelessWidget {
  const NonTechTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NON Tech'),
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
