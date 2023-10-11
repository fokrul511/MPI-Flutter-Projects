import 'package:flutter/material.dart';

class GallaryPhoto extends StatefulWidget {
  const GallaryPhoto({Key? key}) : super(key: key);

  @override
  _GallaryPhotoState createState() => _GallaryPhotoState();
}

class _GallaryPhotoState extends State<GallaryPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gallary',
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: const [
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
            card_task(),
          ],
        ),
      ),
    );
  }
}

class card_task extends StatelessWidget {
  const card_task({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      child: Image.asset(
        fit: BoxFit.contain,
        'assets/images/Fokrul.jpeg',
      ),
    );
  }
}
