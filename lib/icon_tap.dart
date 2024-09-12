import 'package:flutter/material.dart';

class IconTapView extends StatelessWidget {
  const IconTapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon Tap"),
      ),
      body: Center(
        child: InkWell(onTap: () {
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
        }, child: Icon(Icons.share)),
      ),
    );
  }
}
