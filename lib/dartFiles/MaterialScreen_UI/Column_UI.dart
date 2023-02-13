import 'package:flutter/material.dart';

class Column_UI extends StatelessWidget {
  const Column_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            Center(
              child: Text('Hello World',style: TextStyle(
                  fontSize: 20
              ),),
            ),
            SizedBox(height: 5),
            Center(
              child: Text('Hello World',style: TextStyle(
                  fontSize: 20,color: Colors.teal
              ),),
            ),
            SizedBox(height: 5),
            Center(
              child: Text('Hello World',style: TextStyle(
                  fontSize: 20,color: Colors.cyan
              ),),
            ),
            SizedBox(height: 5),
            Center(
              child: Text('Hello World',style: TextStyle(
                  fontSize: 20,color: Colors.blue
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
