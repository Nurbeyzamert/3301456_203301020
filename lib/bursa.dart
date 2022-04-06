import 'package:flutter/material.dart';

class bursa extends StatefulWidget {
  const bursa({Key? key}) : super(key: key);

  @override
  State<bursa> createState() => _bursaState();
}

class _bursaState extends State<bursa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text("BURSA"),
      ),
    );
  }
}
