import 'package:flutter/material.dart';

class Switch_UI extends StatefulWidget {
  const Switch_UI({Key? key}) : super(key: key);

  @override
  State<Switch_UI> createState() => _Switch_UIState();
}

class _Switch_UIState extends State<Switch_UI> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: isSwitch,
              activeColor: Colors.green,
              activeTrackColor: Colors.cyanAccent,
              onChanged: (value){
                setState(() {
                  isSwitch = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
