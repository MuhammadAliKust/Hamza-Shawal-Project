import 'package:demo_project/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text(
      //       'First Screen',
      //       style: TextStyle(
      //           fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey),
      //     ),
      //     leading: Icon(
      //       Icons.arrow_back_ios,
      //       size: 30,
      //       color: Colors.yellow,
      //     ),
      //     centerTitle: true,
      //     backgroundColor: Colors.blue,
      //     actions: [
      //       Icon(Icons.notifications),
      //       Icon(Icons.shopping_cart),
      //       Icon(Icons.shopping_cart),
      //     ],
      //   ),
      //   body: Column(
      //     children: [
      //    Image.asset('assets/images/user.png'),
      //        SizedBox(height: 30,),
      //       Text(
      //         "Hello World",
      //         style: TextStyle(fontSize: 30),
      //       ),
      //       Text(
      //         "Second Text",
      //         style: TextStyle(fontSize: 30),
      //       ),
      //       Text(
      //         "Second Text",
      //         style: TextStyle(fontSize: 30),
      //       ),
      //       SizedBox(height: 30,),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           Icon(Icons.add),
      //           Icon(Icons.add),
      //           Icon(Icons.add),
      //         ],
      //       )
      //     ],
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     onPressed: () {},
      //     backgroundColor: Colors.blue,
      //     child: Icon(
      //       Icons.add,
      //       color: Colors.white,
      //     ),
      //   ),
      // ),
    );
  }
}
