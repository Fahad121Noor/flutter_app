import 'package:flutter/material.dart';

class Slide_UI extends StatefulWidget {
  const Slide_UI({Key? key}) : super(key: key);

  @override
  State<Slide_UI> createState() => _Slide_UIState();
}

class _Slide_UIState extends State<Slide_UI> {
  double value = 0;
  var rangeValues = const RangeValues(20, 80);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slider(
          value: value,
          min: 0,
          max: 100,
          onChanged: (v) {
            setState(() => value = v.roundToDouble());
          },
        ),
      ),
    );
  }
}
