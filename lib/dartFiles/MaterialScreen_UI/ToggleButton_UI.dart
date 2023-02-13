import 'package:flutter/material.dart';

class ToggleButton_UI extends StatefulWidget {
  const ToggleButton_UI({Key? key}) : super(key: key);

  @override
  State<ToggleButton_UI> createState() => _ToggleButton_UIState();
}

class _ToggleButton_UIState extends State<ToggleButton_UI> {
  var selectedList1 = [true, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ToggleButtons(
                onPressed: (int index) {
                  setState(() => selectedList1[index] = !selectedList1[index]);
                },
                isSelected: selectedList1,
                children: const [
                  Icon(Icons.account_balance),
                  Icon(Icons.backup),
                  Icon(Icons.calendar_today),
                  Text('Text'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
