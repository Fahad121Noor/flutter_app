import 'package:flutter/material.dart';

class AnimatedCrossFade_UI extends StatefulWidget {
  const AnimatedCrossFade_UI({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFade_UI> createState() => _AnimatedCrossFade_UIState();
}

class _AnimatedCrossFade_UIState extends State<AnimatedCrossFade_UI> {
  bool isFirst = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              sizeCurve: const ElasticOutCurve(),
              firstCurve: Curves.easeIn,
              secondCurve: Curves.easeInOut,
              duration: const Duration(seconds: 3),
              firstChild: const FlutterLogo(
                style: FlutterLogoStyle.horizontal,
                size: 100,
              ),
              secondChild: const FlutterLogo(
                style: FlutterLogoStyle.markOnly,
                size: 100,
              ),
              crossFadeState:
              isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                setState(() => isFirst = !isFirst);
              },
              child: Text('Click Me!'),
            ),
          ],
        ),
      ),
    );
  }
}
