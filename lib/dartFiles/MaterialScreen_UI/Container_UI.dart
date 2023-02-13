import 'package:flutter/material.dart';

class Container_UI extends StatelessWidget {
  const Container_UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    border: Border.all(
                        color: Colors.black,
                        width: 2
                    ),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: const Center(child: Text('Container')),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration:  const BoxDecoration(
                    color: Colors.cyanAccent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                    )
                ),
                child: const Center(child: Text('Container')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
