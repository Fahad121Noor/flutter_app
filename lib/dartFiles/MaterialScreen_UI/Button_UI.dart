import 'package:flutter/material.dart';

class Button_UI extends StatelessWidget {
  const Button_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  padding:  const EdgeInsets.all(15),
                  side: const BorderSide(color: Colors.black, width: 3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: (){
                },
                child: const Text('Click'),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                ),
                onPressed: (){},
                child: const Text('Add'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
