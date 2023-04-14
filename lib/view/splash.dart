import 'package:flutter/material.dart';
import 'package:mooi/view/homePage.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Center(
          child: Image.asset('images/Mooi.png',),
        )

    );
  }
}
