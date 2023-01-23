import 'package:flutter/material.dart';
import 'package:flutter_uebung_2/meine_card.dart';

import 'einkauf.dart';

class Einkaufsliste extends StatelessWidget {
  final List<Einkauf> einkaeufe;

  const Einkaufsliste(this.einkaeufe, {super.key});

  // Erzeuge eine Karte für unsere ListView.
  // Welche Karte das sein soll steht in index:
  Widget erzeugeCard(context, index) {
    return MeineCard(
        artikel: einkaeufe[index].artikel,
        preis: einkaeufe[index].preis,
        datum: einkaeufe[index].datum);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        child: ListView.builder(
          itemBuilder: erzeugeCard,
          itemCount: einkaeufe.length,
        ));
  }
}
