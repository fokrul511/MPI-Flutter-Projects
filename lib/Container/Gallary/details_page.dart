import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pactics_1/Container/Gallary/gallary_new.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    required this.imagePath,
    required this.details,
    required this.price,
    required this.title,
  }) : super(key: key);

  final String imagePath;
  final String price;
  final String title;
  final String details;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 260,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const GallaryNew(),
                              ),
                            );
                          },
                          child: const Text('Back'))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
