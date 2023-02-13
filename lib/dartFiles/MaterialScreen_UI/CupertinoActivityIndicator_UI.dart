import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicator_UI extends StatefulWidget {
  const CupertinoActivityIndicator_UI({Key? key}) : super(key: key);

  @override
  State<CupertinoActivityIndicator_UI> createState() => _CupertinoActivityIndicator_UIState();
}

class _CupertinoActivityIndicator_UIState extends State<CupertinoActivityIndicator_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            CupertinoActivityIndicator(),
            SizedBox(height: 20),
            CupertinoActivityIndicator(radius: 30.0),
            SizedBox(height: 20),
            CupertinoActivityIndicator(
              animating: false,
              radius: 30.0,
            )
          ],
        ),
      ),
    );
  }
}
