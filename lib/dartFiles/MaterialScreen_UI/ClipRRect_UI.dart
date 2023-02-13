import 'package:flutter/material.dart';

import '../../Core/ImagePath.dart';

class ClipRRext_UI extends StatelessWidget {
  const ClipRRext_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              clipBehavior: Clip.antiAlias,
              child: Center(
                child: Align(
                  widthFactor: 0.75,
                  heightFactor: 0.75,
                  child: Image.asset(
                    Images.flutterImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
