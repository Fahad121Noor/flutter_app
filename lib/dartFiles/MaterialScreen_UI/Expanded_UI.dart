import 'package:flutter/material.dart';

class Expanded_UI extends StatelessWidget {
  const Expanded_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                margin:  const EdgeInsets.all(10),
                height: 50,
                color: Colors.teal,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                margin:  const EdgeInsets.all(10),
                height: 60,
                color: Colors.teal,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin:  const EdgeInsets.all(10),
                height: 70,
                color: Colors.teal,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin:  const EdgeInsets.all(10),
                height: 80,
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
