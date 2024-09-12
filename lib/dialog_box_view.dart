import 'package:flutter/material.dart';

class DialogBoxView extends StatelessWidget {
  const DialogBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Message"),
                      content: Text("This is test dialog"),
                      actions: [
                        TextButton(onPressed: () {}, child: Text("Yes")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("No")),
                      ],
                    );
                  });
            },
            child: Text("Show Dialog Box")),
      ),
    );
  }
}
