import "package:flutter/material.dart";

Widget header(String title, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 30),
      IconButton(
          icon:Icon (Icons.arrow_back , color: Color(0xffe1b5b2), size: 30),
          onPressed: () => Navigator.pop(context)),

      SizedBox(height: 25),
      Text(title , style: TextStyle(
          fontFamily:"Caveat",
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Color(0xffe1b5b2)),),

      SizedBox(height: 20,),
    ],
  );
}