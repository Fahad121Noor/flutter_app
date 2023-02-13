import 'package:flutter/material.dart';
import '../../Core/ImagePath.dart';

class ListTile_UI extends StatelessWidget {
  const ListTile_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: ClipOval(
                  child: Image.asset(
                    Images.flutterImage,
                    fit: BoxFit.cover,
                  )),
              title: const Text('Flutter'),
              subtitle: const Text('ListTile Widget'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('Flutter');
              },
              selected: true,
            ),
            ListTile(
              leading: ClipOval(
                  child: Image.asset(
                    Images.flutterImage,
                    fit: BoxFit.cover,
                  )),
              title: const Text('Flutter'),
              subtitle: const Text('ListTile Widget'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('Flutter');
              },
            ),
            ListTile(
              leading: ClipOval(
                  child: Image.asset(
                    Images.flutterImage,
                    fit: BoxFit.cover,
                  )),
              title: const Text('Flutter'),
              subtitle: const Text('ListTile Widget'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('Flutter');
              },
              enabled: false,
            ),
            ListTile(
              leading: ClipOval(
                  child: Image.asset(
                    Images.flutterImage,
                    fit: BoxFit.cover,
                  )),
              title: const Text('Flutter'),
              subtitle: const Text('ListTile Widget'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('Flutter');
              },
            ),
            ListTile(
              leading: ClipOval(
                  child: Image.asset(
                    Images.flutterImage,
                    fit: BoxFit.cover,
                  )),
              title: const Text('Flutter'),
              subtitle: const Text('ListTile Widget'),
              trailing: const Icon(Icons.keyboard_arrow_right),
              onTap: () {
                print('Flutter');
              },
            ),
          ],
        ),
      ),
    );
  }
}
