import 'package:flutter/material.dart';

import './einkauf.dart';
import './neuer_einkauf.dart';
import './einkauf_liste.dart';

class VerwalteEinkaeufe extends StatefulWidget {
  const VerwalteEinkaeufe({super.key});

  @override
  State<VerwalteEinkaeufe> createState() => _VerwalteEinkaeufeState();
}

class _VerwalteEinkaeufeState extends State<VerwalteEinkaeufe> {
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
    return Column(
      children: [
        NeuerEinkauf(einkaufEinfuegen),
        SizedBox(
            height: 400,
            width: double.infinity,
            child: Einkaufsliste(_einkaeufe))
      ],
    );
  }
}
