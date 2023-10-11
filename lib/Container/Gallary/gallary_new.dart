import 'package:flutter/material.dart';
import 'package:pactics_1/Container/Gallary/details_page.dart';

List<ImageDetails> _images = [
  const ImageDetails(
      imagePath: 'assets/images/1.jpg',
      details: 'Invidunt diam duo ipsum aliquyam no nonumy sit, sea voluptua.',
      price: '\$12',
      title: 'Moulvibazar Polytechnic Institute'),
  const ImageDetails(
      imagePath: 'assets/images/2.jpg',
      details: 'Invidunt diam duo ipsum aliquyam no nonumy sit, sea voluptua.',
      price: '\$12',
      title: 'Moulvibazar Polytechnic Institute'),
  const ImageDetails(
      imagePath: 'assets/images/3.jpg',
      details: 'Invidunt diam duo ipsum aliquyam no nonumy sit, sea voluptua.',
      price: '\$12',
      title: 'Moulvibazar Polytechnic Institute'),
  const ImageDetails(
      imagePath: 'assets/images/4.jpg',
      details: 'Invidunt diam duo ipsum aliquyam no nonumy sit, sea voluptua.',
      price: '\$12',
      title: 'Moulvibazar Polytechnic Institutes')
];

class GallaryNew extends StatelessWidget {
  const GallaryNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              'Gallary',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 30.0,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      30.0,
                    ),
                    topRight: Radius.circular(
                      30.0,
                    ),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                                imagePath: _images[index].imagePath,
                                details: _images[index].details,
                                price: _images[index].price,
                                title: _images[index].title),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(_images[index].imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageDetails extends StatelessWidget {
  const ImageDetails({
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
    return Container();
  }
}
