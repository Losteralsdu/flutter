import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MeinWidget extends StatelessWidget {
  const MeinWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Finale Übung")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("1. Zeile"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("1. Spalte"),
                Text("2. Spalte"),
                Text("3. Spalte")
              ],
            ),
            Text("3. Zeile"),
            Card(
              child: Text("Card"),
              elevation: 10,
              color: Colors.amber,
            )
          ],
        ));
  }
}
