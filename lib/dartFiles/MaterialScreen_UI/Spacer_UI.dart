import 'package:flutter/material.dart';

class Spacer_UI extends StatelessWidget {
  const Spacer_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.yellow,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.yellow,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.yellow,
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
