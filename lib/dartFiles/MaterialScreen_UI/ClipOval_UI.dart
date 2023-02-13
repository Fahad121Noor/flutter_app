import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Core/ImagePath.dart';

class ClipOval_UI extends StatelessWidget {
  const ClipOval_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 220,
                width: 220,
                color: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipOval(
                    child: Image.asset(
                      Images.treeImage,
                      fit: BoxFit.cover,
                    ),
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
