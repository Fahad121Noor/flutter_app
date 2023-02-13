import 'package:flutter/material.dart';

class ListView_UI extends StatelessWidget {
  const ListView_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: const <Widget>[
            Text('Title1'),
            Text('Title2'),
            Text('Title3'),
            Icon(Icons.account_balance_wallet),
            Icon(Icons.access_time),
            Icon(Icons.adb),
            ListTile(
              leading: Text('line1'),
            ),
            ListTile(
              leading: Text('line2'),
            ),
            ListTile(
              leading: Text('line3'),
            )
          ],
        ),
      ),
    );
  }
}
