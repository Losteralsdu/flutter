import 'package:flutter/material.dart';

class NeuerEinkauf extends StatelessWidget {
  NeuerEinkauf(this.onPressedFunktion, {super.key});
  
  final TextEditingController artikelController = TextEditingController();
  final TextEditingController preisController = TextEditingController();
  final void Function(String, double) onPressedFunktion;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(children: [
        TextField(
          controller: artikelController,
          decoration: InputDecoration(labelText: "Artikel"),
        ),
        TextField(
          controller: preisController,
          decoration: InputDecoration(labelText: "Preis"),
        ),
        TextButton(
            onPressed: () {
              onPressedFunktion(
                  artikelController.text, double.parse(preisController.text));
            },
            child: Text("Speichern"))
      ]),
    );
  }
}
