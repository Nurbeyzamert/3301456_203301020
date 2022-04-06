import 'package:flutter/material.dart';

class izmir extends StatefulWidget {
  const izmir({Key? key}) : super(key: key);

  @override
  State<izmir> createState() => _izmirState();
}

class _izmirState extends State<izmir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text("İZMİR"),
      ),
    );
  }
}
