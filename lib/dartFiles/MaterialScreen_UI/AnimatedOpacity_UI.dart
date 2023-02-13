import 'package:flutter/material.dart';

class AnimatedOpacity_UI extends StatefulWidget {
  const AnimatedOpacity_UI({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacity_UI> createState() => _AnimatedOpacity_UIState();
}

class _AnimatedOpacity_UIState extends State<AnimatedOpacity_UI> {
  double opacity = 1.0;

  _changeOpacity() {
    setState(() => opacity = opacity == 0 ? 1.0 : 0.0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 300,
              width: 300,
              color: Colors.grey.shade200,
              child: AnimatedOpacity(
                opacity: opacity,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(),
              ),
            ),
            ElevatedButton(
              onPressed: _changeOpacity,
              child: const Text('Change Opacity'),
            ),
          ],
        ),
      ),
    );
  }
}
