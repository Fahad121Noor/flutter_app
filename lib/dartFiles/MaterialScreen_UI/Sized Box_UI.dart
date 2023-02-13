import 'package:flutter/material.dart';

class SizeBox_UI extends StatelessWidget {
  const SizeBox_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 80,
              child: Container(
                color: Colors.green,
                child: const Center(child: Text('SizedBox')),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              height: 120,
              child: Container(
                color: Colors.teal,
                child: const Center(child: Text('SizedBox')),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  height: 50,
                  child: Container(
                    color: Colors.cyanAccent,
                    child: const Center(child: Text('SizedBox')),
                  ),
                ),
                const SizedBox(width: 30),
                SizedBox(
                  width: 80,
                  height: 50,
                  child: Container(
                    color: Colors.yellow,
                    child: const Center(child: Text('SizedBox')),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
