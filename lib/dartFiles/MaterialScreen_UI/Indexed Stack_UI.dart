import 'package:flutter/material.dart';

class IndexedStack_UI extends StatefulWidget {
  const IndexedStack_UI({Key? key}) : super(key: key);

  @override
  State<IndexedStack_UI> createState() => _IndexedStack_UIState();
}

class _IndexedStack_UIState extends State<IndexedStack_UI> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Container(
              height: 300,
              child: IndexedStack(
                index: _index,
                children: <Widget>[
                  Container(
                    color: Colors.pink,
                    child: const Center(
                      child: Text('Page 1'),
                    ),
                  ),
                  Container(
                    color: Colors.cyan,
                    child: const Center(
                      child: Text('Page 2'),
                    ),
                  ),
                  Container(
                    color: Colors.deepPurple,
                    child: const Center(
                      child: Text('Page 3'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    if (_index <= 0) return;
                    setState(() {
                      _index -= 1;
                    });
                  },
                  child: const Text(
                    "Prev",
                  ),
                ),
                const SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: () {
                    if (_index >= 2) return;
                    setState(() {
                      _index += 1;
                    });
                  },
                  child: const Text(
                    "Next",
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
