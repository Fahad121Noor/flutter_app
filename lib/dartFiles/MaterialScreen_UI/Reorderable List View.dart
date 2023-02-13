import 'package:flutter/material.dart';

class ReorderableListView_UI extends StatefulWidget {
  const ReorderableListView_UI({Key? key}) : super(key: key);

  @override
  State<ReorderableListView_UI> createState() => _ReorderableListView_UIState();
}

class _ReorderableListView_UIState extends State<ReorderableListView_UI> {
  List<String> items = List.generate(20, (index) => 'Item $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ReorderableListView(
                children: items.map((value) {
                  return ListTile(
                    key: ValueKey(value),
                    title: Text(value),
                  );
                }).toList(),
                onReorder: (oldIndex, newIndex) {
                  setState(() {
                    var removeItem = items.removeAt(oldIndex);
                    items.insert(newIndex, removeItem);
                  });
                },
                header: const Text('Header: Change order by drag'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
