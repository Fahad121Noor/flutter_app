import 'package:flutter/material.dart';

class AnimatedPositioned_UI extends StatefulWidget {
  const AnimatedPositioned_UI({Key? key}) : super(key: key);

  @override
  State<AnimatedPositioned_UI> createState() => _AnimatedPositioned_UIState();
}

class _AnimatedPositioned_UIState extends State<AnimatedPositioned_UI> {
  bool status = true;

  double left = 30;
  double top = 30;
  double right = 30;
  double bottom = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Container(
              color: Colors.red,
              height: 300,
              child: Stack(
                children: <Widget>[
                  AnimatedPositioned(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    left: left,
                    top: top,
                    right: right,
                    bottom: bottom,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: Text('Change position'),
              onPressed: () => setState(() {
                left = status ? 10 : 40;
                top = status ? 20 : 40;
                right = status ? 20 : 40;
                bottom = status ? 20 : 40;
                status = !status;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
