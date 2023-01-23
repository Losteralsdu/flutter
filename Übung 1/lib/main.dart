import 'package:flutter/material.dart';

import 'MeineCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color farbe = Colors.yellow;

  void meineOnPressed() {
    setState(() {
      if (farbe == Colors.yellow) {
        farbe = Colors.lightBlue;
      } else {
        farbe = Colors.yellow;
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter-Übung 1',
        home: Scaffold(
          appBar: AppBar(title: const Text("Flutter-Übung 1")),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MeineCard(meinText: "Body", meineFarbe: farbe),
              const MeineCard(
                  meinText: "Ich bin der Text in der zweiten Zeile",
                  meineFarbe: Colors.lightGreen),
              ElevatedButton(
                  onPressed: meineOnPressed, child: const Text("Farben ändern"))
            ],
          ),
        ));
  }
}
