import 'package:flutter/material.dart';

class Card_UI extends StatelessWidget {
  const Card_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              shadowColor: Colors.black,
              color: Colors.greenAccent[100],
              child:  const SizedBox(
                  height: 50, width: 150,
                  child: Center(child: Text('Card Widget'))),
            ),
          ],
        ),
      ),
    );
  }
}
