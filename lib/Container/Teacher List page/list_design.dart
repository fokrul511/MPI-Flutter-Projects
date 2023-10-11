import 'package:flutter/material.dart';

class ComputerDepTech extends StatelessWidget {
  const ComputerDepTech({
    Key? key,
    required this.name,
    required this.qulifiction,
    required this.photo,
    required this.button_call,
    required this.button_email,
  }) : super(key: key);

  final String name;
  final String qulifiction;
  final Widget photo;
  final IconButton button_call;
  final IconButton button_email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: photo,
              ),
              SizedBox(
                width: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    qulifiction,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                children: [
                  button_call,
                  button_email,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
