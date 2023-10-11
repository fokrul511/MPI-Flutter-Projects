import 'package:flutter/material.dart';

class Staffs extends StatelessWidget {
  const Staffs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text('staffs page'),
            )
          ],
        ),
      ),
    );
  }
}
