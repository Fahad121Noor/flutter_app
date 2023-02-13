import 'package:flutter/material.dart';

class Divider_UI extends StatelessWidget {
  const Divider_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ListTile(
              title: Text('Item1'),
            ),
            Divider(),
            ListTile(
              title: Text('Item2'),
            ),
            Divider(),
            ListTile(
              title: Text('Item3'),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
