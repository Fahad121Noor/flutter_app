import 'package:flutter/material.dart';

class Placeholder_UI extends StatelessWidget {
  const Placeholder_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.white,
                child: const Placeholder(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
