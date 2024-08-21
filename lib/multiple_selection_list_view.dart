import 'package:flutter/material.dart';

class MultipleSelectionListViewDemo extends StatefulWidget {
  const MultipleSelectionListViewDemo({super.key});

  @override
  State<MultipleSelectionListViewDemo> createState() =>
      _MultipleSelectionListViewDemoState();
}

class _MultipleSelectionListViewDemoState
    extends State<MultipleSelectionListViewDemo> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                if (selectedIndex.length > 5) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content:
                          Text("You cannot select more than 5 categories")));
                  return;
                }
                if (selectedIndex.contains(i)) {
                  selectedIndex.remove(i);
                } else {
                  selectedIndex.add(i);
                }

                setState(() {});
              },
              leading: Text(i.toString()),
              title: Text("Index $i Selected Index $selectedIndex"),
              subtitle: Text("Notification Subtitle"),
              trailing: Icon(Icons.arrow_forward_ios),
              tileColor: selectedIndex.contains(i) ? Colors.blue : Colors.white,
            );
          }),
    );
  }
}
