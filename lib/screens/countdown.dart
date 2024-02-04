import 'dart:async';

import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
  const Countdown({super.key});

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  Timer? _timer;
  int _start = 10;

  void startTimer() {
    Duration oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Timer test")),
      body: Column(
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              startTimer();
            },
            child: Text("start"),
          ),
          Text("$_start")
        ],
      ),
    );
  }
}
