import 'package:flutter/material.dart';

class ProgressIndicator_UI extends StatefulWidget {
  const ProgressIndicator_UI({Key? key}) : super(key: key);

  @override
  State<ProgressIndicator_UI> createState() => _ProgressIndicator_UIState();
}

class _ProgressIndicator_UIState extends State<ProgressIndicator_UI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:  Container(
                margin:  const EdgeInsets.symmetric(vertical: 20),
                width: 300,
                child: const LinearProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
