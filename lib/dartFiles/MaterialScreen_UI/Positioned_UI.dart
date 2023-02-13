import 'package:flutter/material.dart';

class Positioned_UI extends StatelessWidget {
  const Positioned_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              color: Colors.yellow,
              height: 300,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.yellow,
                  ),
                  Positioned(
                    top: 20,
                    left: 80,
                    width: 100,
                    height: 100,
                    child: Container(
                      color: Colors.teal,
                      child: const Padding(
                        padding:  EdgeInsets.all(10),
                        child: Text('Child with Positioned'),
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    start: 30,
                    top: 140,
                    child: Container(
                      height: 45,
                      color: Colors.orange,
                      child: const Padding(
                        padding:  EdgeInsets.all(10),
                        child: Text('Child with PositionedDirectional'),
                      ),
                    ),
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
