import 'package:demo_project/calculator_view.dart';
import 'package:demo_project/list_view.dart';
import 'package:demo_project/login_view.dart';
import 'package:demo_project/multiple_selection_list_view.dart';
import 'package:demo_project/page_view.dart';
import 'package:demo_project/search_view.dart';
import 'package:demo_project/test.dart';
import 'package:flutter/material.dart';

import 'bottom_bar_view.dart';
import 'dynamic_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomBarViewDemo(),
    );
  }
}
