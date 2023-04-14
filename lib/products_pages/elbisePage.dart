import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import '../components/header.dart';
import 'package:mooi/products_detail/elbise1.dart';
import 'package:mooi/products_detail/elbise2.dart';
import 'package:mooi/products_detail/elbise3.dart';
import 'package:mooi/products_detail/elbise4.dart';
import 'package:mooi/products_detail/elbise5.dart';


class elbisePage extends StatelessWidget {
  List<Map> products=[
    {"isim":"İnce Askılı Göğüsü Drapeli Vencover Saten Elbise","foto": "assets/images/elbise2.png","fiyat":"419,90 TL"},
    {"isim":"Çiçek Desenli Vatkalı Şifon Baker Elbise","foto": "assets/images/elbise4.png","fiyat":"539,90 TL"},
    {"isim":"Kalp Yaka Eteği Kruvaze Mini Marge Elbise","foto": "assets/images/elbise1.png","fiyat":"449,90 TL"},
    {"isim":"Kruvaze Etek Detaylı Tek Omuz Saten Jake Elbise","foto": "assets/images/elbise5.png","fiyat":"399,90 TL"},
    {"isim":"Kat Etek Detaylı Yaprak Desenli Elbise","foto": "assets/images/elbise3.png","fiyat":"579,90 TL"},
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
                        header("ELBİSELER", context),
                        SizedBox(height: 30),

                        Expanded(child:
                        GridView.count(crossAxisCount:2,mainAxisSpacing: 20 , crossAxisSpacing:15 ,children: products.where((product) => product != null).map((product) {
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


Widget buildContent(String title, String photo,String price, context) {
  return GestureDetector(
      onTap: () {
        if (title == "Kalp Yaka Eteği Kruvaze Mini Marge Elbise") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Elbise1Page(title)));
        } else if (title  == "İnce Askılı Göğüsü Drapeli Vencover Saten Elbise") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Elbise2Page(title)));
        } else if (title == "Kat Etek Detaylı Yaprak Desenli Elbise") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Elbise3Page(title)));
        } else if (title == "Çiçek Desenli Vatkalı Şifon Baker Elbise") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Elbise4Page(title)));
        } else if (title  == "Kruvaze Etek Detaylı Tek Omuz Saten Jake Elbise") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Elbise5Page(title)));
        } else {
          return null;
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
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
              Text(price,style: TextStyle(color: Color(0xffe1b5b2),fontSize: 20,fontWeight: FontWeight.w500),)
            ],)


        ],),
      ));
}

Widget buildIcon({required IconData iconData , required bool active,}) {
  return Icon(
      iconData, size: 20, color: Color(active ? 0xffe1b5b2 : 0xff02040F,));
}