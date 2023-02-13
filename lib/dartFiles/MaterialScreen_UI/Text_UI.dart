import 'package:flutter/material.dart';

class Text_UI extends StatelessWidget {
  const Text_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hello Word',style: TextStyle(
            fontSize: 20,fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
