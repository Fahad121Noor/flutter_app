import 'package:flutter/material.dart';

class LimitedBox_UI extends StatelessWidget {
  const LimitedBox_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const <Widget>[
            Center(
              child: LimitedBox(
                maxHeight: 200,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
