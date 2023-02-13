import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Padding_UI extends StatelessWidget {
  const Padding_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.cyan,
              padding:  EdgeInsets.all(16),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.cyan,
              padding:  const EdgeInsets.only(top: 20,right: 20),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
