import 'package:flutter/material.dart';

class Row_UI extends StatelessWidget {
  const Row_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            Center(
              child: Text('Hello World',style: TextStyle(
                  fontSize: 20
              ),),
            ),
            SizedBox(width: 10),
            Center(
              child: Text('Hello World',style: TextStyle(
                  fontSize: 20,color: Colors.teal
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
