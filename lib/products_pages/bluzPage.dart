import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import '../components/header.dart';
import 'package:mooi/products_detail/bluz1.dart';
import 'package:mooi/products_detail/bluz2.dart';
import 'package:mooi/products_detail/bluz3.dart';
import 'package:mooi/products_detail/bluz4.dart';
import 'package:mooi/products_detail/bluz5.dart';

class bluzPage extends StatelessWidget {
  List<Map> products=[
    {"isim":"Renkli Çiçek Desenli Judy Crop","foto": "assets/images/bluz1.png","fiyat":"149,90 TL"},
    {"isim":"Çapraz Dekolteli Gale Bodysuit","foto": "assets/images/bluz2.png","fiyat":"89,90 TL"},
    {"isim":"Tül Detaylı Pagis Bluz","foto": "assets/images/bluz3.png","fiyat":"109,90 TL"},
    {"isim":"Tek Kollu Göğüsü Halka Detaylı Lupa Bluz","foto": "assets/images/bluz4.png","fiyat":"179,90 TL"},
    {"isim":"Kruvaze Sırtı Gipeli Sidney Bluz","foto": "assets/images/bluz5.png","fiyat":"139,90 TL"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Stack(
              children: [ Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        header("BLUZ-CROP", context),
                        SizedBox(height: 30),

                        Expanded(child:
                        GridView.count(crossAxisCount:2,mainAxisSpacing: 20 , crossAxisSpacing:15 ,children:products.where((product) => product != null).map((product){
                          return buildContent(
                            product["isim"] ?? "",
                            product["foto"] ?? "",
                            product["fiyat"] ?? "",
                            context,
                          );
                        }).toList(),))
                      ])),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(offset: Offset(0, -3),
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 10)
                        ],
                          color: Color(0xffffffff),
                        ),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              buildIcon(iconData: Icons.home_filled, active: false),
                              buildIcon(iconData: Icons.favorite, active: false),
                              buildIcon(iconData: Icons.shopping_basket, active: false),
                              buildIcon(iconData: Icons.search, active: true),
                            ])))
              ]),)
    );
  }
}


Widget buildContent(String title, String photo,String price,context) {
  return GestureDetector(
      onTap: () {
        if (title == "Renkli Çiçek Desenli Judy Crop") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Bluz1Page(title)));
        } else if (title  == "Çapraz Dekolteli Gale Bodysuit") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Bluz2Page(title)));
        } else if (title  == "Tül Detaylı Pagis Bluz") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Bluz3Page(title)));
        } else if (title == "Tek Kollu Göğüsü Halka Detaylı Lupa Bluz") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Bluz4Page(title)));
        } else if (title  == "Kruvaze Sırtı Gipeli Sidney Bluz") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Bluz5Page(title)));
        } else {
          return null;
        }
      },
      child:Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 25,
                offset: Offset(0, 15))
          ],
        ),
        child: Column(children: [
          SizedBox(height: 15),
          Image.asset(photo),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontFamily: "Cinzel", color: Color(0xff02040F),fontSize: 20,fontWeight: FontWeight.w500),),
              Text(price,style: TextStyle(color: Color(0xffe1b5b2),fontSize: 19,fontWeight: FontWeight.w500),)
            ],)

        ],),
      ));
}

Widget buildIcon({required IconData iconData , required bool active,}) {
  return Icon(
      iconData, size: 20, color: Color(active ? 0xffe1b5b2 : 0xff02040F,));
}