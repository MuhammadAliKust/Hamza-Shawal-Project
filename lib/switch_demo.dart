import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchViewDemo extends StatefulWidget {
  const SwitchViewDemo({super.key});

  @override
  State<SwitchViewDemo> createState() => _SwitchViewDemoState();
}

class _SwitchViewDemoState extends State<SwitchViewDemo> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Center(
        child: CupertinoSwitch(
            trackColor: Colors.blue,
            activeColor: Colors.orange,
            // thumbColor: Colors.green,
            value: isSwitchOn,
            onChanged: (val) {
              log(val.toString());
              isSwitchOn = val;
              setState(() {});
            }),
      ),
    );
  }
}
