import 'package:flutter/material.dart';
import 'package:pactics_1/Container/Teacher%20List%20page/Computer%20all%20Teacher/abul_fattah_tuhin.dart';
import 'package:pactics_1/Container/Teacher%20List%20page/Computer%20all%20Teacher/debasis_roy.dart';
import 'package:pactics_1/Container/Teacher%20List%20page/Computer%20all%20Teacher/fahmida_afroj.dart';
import 'package:pactics_1/Container/Teacher%20List%20page/Computer%20all%20Teacher/fawjiya_anika.dart';

class ComputerTeacher extends StatefulWidget {
  const ComputerTeacher({Key? key}) : super(key: key);

  @override
  State<ComputerTeacher> createState() => _ComputerTeacherState();
}

class _ComputerTeacherState extends State<ComputerTeacher> {
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
              children: [
                AbulFattahTuhin(),
                FawjiyaAnika(),
                FahmidaAfroj(),
                DebasisRoy(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
