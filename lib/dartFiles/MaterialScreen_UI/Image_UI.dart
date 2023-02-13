import 'package:flutter/material.dart';

import '../../Core/ImagePath.dart';

class Image_UI extends StatelessWidget {
  const Image_UI({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Image From Asset",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Image.asset(
              Images.flutterImage,
              fit: BoxFit.cover,

            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Image From Net with progress",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Image.network(
              'https://img.favpng.com/25/9/1/dart-google-developers-flutter-android-png-favpng-vi7iwNmVaBCVr91EF35XrnFfc.jpg',
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(
                  child: CircularProgressIndicator(

                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
