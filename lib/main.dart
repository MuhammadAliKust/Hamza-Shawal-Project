import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'First Screen',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          leading: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.yellow,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [
            Icon(Icons.notifications),
            Icon(Icons.shopping_cart),
            Icon(Icons.shopping_cart),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Hello World",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Second Text",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Second Text",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
