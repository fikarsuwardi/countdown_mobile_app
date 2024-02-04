import 'package:flutter/material.dart';

class AddCountDown extends StatefulWidget {
  const AddCountDown({super.key});

  @override
  State<AddCountDown> createState() => _AddCountDownState();
}

class _AddCountDownState extends State<AddCountDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Countdown"),
      ),
      body: Container(
        child: Column(
          children: [
            Icon(Icons.ice_skating),
          ],
        ),
      ),
    );
  }
}
