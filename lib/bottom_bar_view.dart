import 'package:demo_project/dynamic_list_view.dart';
import 'package:demo_project/login_view.dart';
import 'package:demo_project/multiple_selection_list_view.dart';
import 'package:flutter/material.dart';

class BottomBarViewDemo extends StatefulWidget {
  const BottomBarViewDemo({super.key});

  @override
  State<BottomBarViewDemo> createState() => _BottomBarViewDemoState();
}

class _BottomBarViewDemoState extends State<BottomBarViewDemo> {
  int selectedIndex = 0;

  List<Widget> screenList = [
    LoginView(),
    MultipleSelectionListViewDemo(),
    DynamicListView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Bar Demo"),
      ),
      body: screenList.elementAt(selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            selectedIndex = val;
            setState(() {});
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
