import 'package:flutter/material.dart';

class Tooltip_UI extends StatelessWidget {
  const Tooltip_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const <Widget>[
            Text('Long press popup prompt'),
            Tooltip(
              message: 'accessibility tooltip',
              verticalOffset: 48,
              child: Icon(
                Icons.accessibility,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
