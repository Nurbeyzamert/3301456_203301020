import 'package:flutter/material.dart';
import 'package:mooi/view/splash.dart';

void main() => runApp (MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mooi Butik',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffffffff)

      ),
      home : Splash(),
    );
  }
}