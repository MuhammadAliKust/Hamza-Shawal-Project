import 'package:flutter/material.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(children: [
                        Text("Resafsdact"),
                        SizedBox(height: 40,),
                        Row(children: [
                          Image.asset('assets/images/copy.png'),
                          Image.asset('assets/images/send.png'),
                          Image.asset('assets/images/thumb.png'),
                        ],)
                      ],),
                    );
                  });
            },
            child: Text("Show Bottom Sheet")),
      ),
    );
  }
}
