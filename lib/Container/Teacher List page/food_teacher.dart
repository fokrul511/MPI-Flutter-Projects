import 'package:flutter/material.dart';

class FoodTeacher extends StatelessWidget {
  const FoodTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food'),
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
