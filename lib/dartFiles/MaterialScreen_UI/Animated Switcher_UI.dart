import 'package:flutter/material.dart';

class AnimatedSwitcher_UI extends StatefulWidget {
  const AnimatedSwitcher_UI({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcher_UI> createState() => _AnimatedSwitcher_UIState();
}

class _AnimatedSwitcher_UIState extends State<AnimatedSwitcher_UI> {
  bool switched = false;

  Widget _myAnimatedWidget = Container(
    key: ValueKey(1),
    width: 250.0,
    height: 250.0,
    color: Color(0xfff18FFFF),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder: (Widget child, Animation<double> animation) =>
                    ScaleTransition(
                      child: child,
                      scale: animation,
                    ),
                child: _myAnimatedWidget),
            SizedBox(
              height: 80,
            ),
            FloatingActionButton.extended(
              backgroundColor: Colors.green,
              onPressed: () => setState(() {
                _myAnimatedWidget = switched
                    ? Container(
                  key: ValueKey(2),
                  width: 250.0,
                  height: 250.0,
                  color: Color(0xfff18FFFF),
                )
                    : Container(
                  key: ValueKey(3),
                  width: 250.0,
                  height: 250.0,
                  color: Color(0xfffFF5252),
                );
                switched ? switched = false : switched = true;
              }),
              icon: const Icon(
                Icons.swap_horiz,
                color: Colors.white,
              ),
              label: const Text(
                "Switch Widgets",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
