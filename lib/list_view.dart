import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
      ),
      body: ListTile(
        leading: Icon(Icons.notifications),
        title: Text("Notification Title"),
        subtitle: Text("Notification Sub Title"),
        tileColor: Colors.blue,
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
