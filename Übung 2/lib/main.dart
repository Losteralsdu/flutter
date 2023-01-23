import 'package:flutter/material.dart';
import 'package:flutter_uebung_2/einkauf_liste.dart';
import 'package:flutter_uebung_2/neuer_einkauf.dart';

import './einkauf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void meineButtonFunktion(BuildContext buildContext) {
    showModalBottomSheet(
        context: buildContext,
        builder: ((context) {
          return NeuerEinkauf(einkaufEinfuegen);
        }));
  }

  final List<Einkauf> _einkaeufe = <Einkauf>[
    Einkauf(artikel: "Schuhe", preis: 29.95, datum: DateTime.now(), id: "id1"),
    Einkauf(id: "id2", artikel: "Mütze", datum: DateTime.now(), preis: 9.95)
  ];

  void einkaufEinfuegen(String artikel, double preis) {
    setState(() {
      _einkaeufe.add(Einkauf(
          id: DateTime.now().toString(),
          artikel: artikel,
          datum: DateTime.now(),
          preis: preis));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter-Übung 2',
      home: Builder(builder: (context) {
        return Scaffold(
            appBar: AppBar(
              title: const Text("Flutter-Übung 2"),
              actions: [
                IconButton(
                    onPressed: () {
                      meineButtonFunktion(context);
                    },
                    icon: const Icon(Icons.add)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.train))
              ],
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () {
                  meineButtonFunktion(context);
                },
                child: const Icon(Icons.add)),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
            body: Einkaufsliste(_einkaeufe));
      }),
    );
  }
}
