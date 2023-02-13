import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPaddng_UI extends StatefulWidget {
  const AnimatedPaddng_UI({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddng_UI> createState() => _AnimatedPaddng_UIState();
}

class _AnimatedPaddng_UIState extends State<AnimatedPaddng_UI> {
  double paddingValue = 0;

  _changePadding() {
    paddingValue = Random().nextDouble() * 100;
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Container(
              width: double.infinity,
              height: 350,
              color: Colors.green,
              child: AnimatedPadding(
                padding: EdgeInsets.all(paddingValue),
                duration: const Duration(milliseconds: 1000),
                curve: Curves.easeInOut,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.purple,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _changePadding,
              child: const Text('Click and change padding'),
            ),
          ],
        ),
      ),
    );
  }
}
