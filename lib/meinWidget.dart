import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

int t = 0;
int t2 = 2;

class meinWidget extends StatefulWidget {
  const meinWidget({super.key});

  @override
  State<meinWidget> createState() => _meinWidgetState();
}

class _meinWidgetState extends State<meinWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Appbar")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Card(elevation: 5, child: new Text('$t'))],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Text 1"),
              Text('Text $t2'),
              const Text("Text 3")
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: _textCounter,
                icon: const Icon(Icons.add),
                color: Colors.blue,
                tooltip: "Text hinzu",
              )
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
        tooltip: "Hinzufügen",
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      t++;
    });
  }

  void _textCounter() {
    setState(() {
      t2++;
    });
  }
}
