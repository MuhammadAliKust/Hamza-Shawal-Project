import 'package:demo_project/list_view.dart';
import 'package:demo_project/login_view.dart';
import 'package:demo_project/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListViewDemo(),

    );
  }
}
