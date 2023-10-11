import 'package:flutter/material.dart';

class StaffsList extends StatefulWidget {
  const StaffsList({Key? key}) : super(key: key);

  @override
  State<StaffsList> createState() => _ComputerTeacherState();
}

class _ComputerTeacherState extends State<StaffsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Computer'),
      ),
      body: SafeArea(
        child: ListView(
          children: const [
            Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
