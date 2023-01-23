import 'package:flutter/material.dart';

class MeineCard extends StatelessWidget {
  final Color meineFarbe;
  final String meinText;

  const MeineCard({required this.meinText, required this.meineFarbe, super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                  width: double.infinity,
                  child: Card(
                    elevation: 10,
                    color: meineFarbe,
                    child: Text(meinText),
                  ));
  }
}
