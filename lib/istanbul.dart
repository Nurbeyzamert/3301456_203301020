import 'package:flutter/material.dart';

class istanbul extends StatefulWidget {
  const istanbul({Key? key}) : super(key: key);

  @override
  State<istanbul> createState() => _istanbulState();
}

class _istanbulState extends State<istanbul> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text("İSTANBUL"),
      ),
    );
  }
}
