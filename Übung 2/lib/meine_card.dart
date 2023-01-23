import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// Siehe https://api.flutter.dev/flutter/intl/DateFormat-class.html

class MeineCard extends StatelessWidget {
  final String artikel;
  final double preis;
  final DateTime datum;

  const MeineCard(
      {required this.artikel,
      required this.preis,
      required this.datum,
      super.key});

  @override
  Widget build(BuildContext context) {
    final datumsFormatierer = new DateFormat("dd.MM.yyyy");
    return SizedBox(
        width: double.infinity,
        child: Card(
          elevation: 10,
          child: Row(children: [
            Text(preis.toStringAsFixed(2)),
            Column(
              children: [Text(artikel), Text(datumsFormatierer.format(datum))],
            ),
            const Icon(
              Icons.delete,
              size: 24,
            )
          ]),
        ));
  }
}
