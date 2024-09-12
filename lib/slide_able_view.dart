import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlideAbleView extends StatelessWidget {
  const SlideAbleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SLideable"),
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        return Slidable(
          // Specify a key if the Slidable is dismissible.
          key: const ValueKey(0),

          // The start action pane is the one at the left or the top side.
          startActionPane: ActionPane(
            // A motion is a widget used to control how the pane animates.
            motion: const ScrollMotion(),
            // A pane can dismiss the Slidable.
            dismissible: DismissiblePane(onDismissed: () {}),

            // All actions are defined in the children parameter.
            children: [
              // A SlidableAction can have an icon and/or a label.
              SlidableAction(
                onPressed: (context) {},
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
                icon: Icons.check_circle,
              ),
            ],
          ),

          // The child of the Slidable is what the user sees when the
          // component is not dragged.
          child: const ListTile(title: Text('Slide me')),
        );
      }),
    );
  }
}
