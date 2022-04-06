import 'package:flutter/material.dart';
import 'package:untitled/ankara.dart';
import 'package:untitled/bursa.dart';
import 'package:untitled/istanbul.dart';
import 'package:untitled/izmir.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurpleAccent[100],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: Text("ANKARA",
                style: TextStyle(
                  fontFamily: "SourceSerifPro",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ankara()));
            },
          ),
          Divider(
            height: 0.1,
          ),
          ListTile(
            title: Text("BURSA",
                style: TextStyle(
                  fontFamily: "SourceSerifPro",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => bursa()));
            },
          ),
          Divider(
            height: 0.1,
          ),
          ListTile(
            title: Text("İSTANBUL",
                style: TextStyle(
                  fontFamily: "SourceSerifPro",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => istanbul()));
            },
          ),
          Divider(
            height: 0.1,
          ),
          ListTile(
            title: Text("İZMİR",
                style: TextStyle(
                  fontFamily: "SourceSerifPro",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => izmir()));
            },
          ),
          Divider(
            height: 0.1,
          ),
        ],
      ),
    );
  }
}
