import 'package:flutter/material.dart';

class TabbarViewDemo extends StatelessWidget {
  const TabbarViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tabbar View Demo"),
          bottom: TabBar(tabs: [
            Icon(Icons.home),
            Icon(Icons.favorite),
            Icon(Icons.person),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("Home View"),),
          Center(child: Text("Favorite View"),),
          Center(child: Text("Profile View"),),
        ]),
      ),
    );
  }
}
