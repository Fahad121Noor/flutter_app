import 'package:flutter/material.dart';

class Alertdialog_UI extends StatefulWidget {
  const Alertdialog_UI({Key? key}) : super(key: key);

  @override
  State<Alertdialog_UI> createState() => _Alertdialog_UIState();
}

class _Alertdialog_UIState extends State<Alertdialog_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AlertDialog(
              title: const Text('AlertDialog Title'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('This is a demo alert dialog.'),
                    Text('Would you like to approve of this message?'),
                  ],
                ),
              ),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text('Approve'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
