import 'package:flutter/material.dart';
import 'package:mooi/products_pages/elbisePage.dart';
import 'package:mooi/products_pages/takimPage.dart';
import 'package:mooi/products_pages/bluzPage.dart';
import 'package:mooi/products_pages/pantolonPage.dart';
import 'package:mooi/products_pages/jeanPage.dart';

class categoryPage extends StatelessWidget {
  final List<String> categories = [
    "Elbiseler",
    "Takımlar",
    "Bluz-Crop",
    "Pantolon",
    "Jean's",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        title: Text('Kategoriler', style: TextStyle(fontFamily: "Cinzel", fontSize: 25),),
        backgroundColor: Color(0xffe1b5b2),
      ),
      body:
      ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          final category = categories[index];
          Container(
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.only(bottom: 16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 4, offset: Offset(0, 4),)
              ],),
            child: Text(
              "",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0A1034)),
            ),
          );

          return ListTile(
              title: Text(category, style: TextStyle(fontFamily: "Cinzel", fontSize: 20, fontWeight: FontWeight.w500),),
              onTap: () {
                if (category == 'Elbiseler') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => elbisePage(),
                    ),
                  );
                } else if (category == 'Takımlar') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => takimPage(),
                    ),
                  );
                } else if (category == 'Bluz-Crop') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => bluzPage(),
                      )
                  );
                } else if (category == 'Pantolon') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pantolonPage(),
                      )
                  );
                } else if (category == "Jean's") {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => jeanPage(),
                      )
                  );
                }
              }
          );
        },),

      //buildIcon(iconData: Icons.menu , active: true,),
    );
  }
}



