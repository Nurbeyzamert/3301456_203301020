import 'package:flutter/material.dart';

class body extends StatefulWidget {
  const body({Key? key}) : super(key: key);

  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 180,
                backgroundImage:
                    AssetImage("images/4c1a01494e8c54e74755f0867a34886e.jpg"),
              ),
              Text(""),
              Text(
                "SEYAHAT REHBERİ",
                style: TextStyle(
                  fontFamily: "SourceSerifPro",
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
