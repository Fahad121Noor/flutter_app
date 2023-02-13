import 'package:flutter/material.dart';

class FloatingActionButton_UI extends StatelessWidget {
  const FloatingActionButton_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: FloatingActionButton(
                onPressed: (){},
                child: const Icon(Icons.add),
              ),
            )
          ],
        ),
      ),
    );
  }
}
