import 'package:flutter/material.dart';

class Stack_UI extends StatelessWidget {
  const Stack_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.yellow,
              height: 300,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    color: Colors.cyan,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: Colors.red,
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
