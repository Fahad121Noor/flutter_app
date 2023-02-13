import 'package:flutter/material.dart';

class Semantics_UI extends StatelessWidget {
  const Semantics_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              width: 100,
              height: 100,
              child: Semantics(label: "Red", child: Container(color: Colors.red)),
            ),
            Positioned(
              top: 25,
              left: 25,
              width: 100,
              height: 100,
              child:
              Semantics(label: "Green", child: Container(color: Colors.green)),
            ),
            Positioned(
              top: 50,
              left: 50,
              width: 100,
              height: 100,
              child: Semantics(label: "Blue", child: Container(color: Colors.blue)),
            )
          ],
        ),
      ),
    );
  }
}
