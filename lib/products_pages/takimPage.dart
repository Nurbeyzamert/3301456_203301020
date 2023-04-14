import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import '../components/header.dart';
import 'package:mooi/products_detail/takim1.dart';
import 'package:mooi/products_detail/takim2.dart';
import 'package:mooi/products_detail/takim3.dart';
import 'package:mooi/products_detail/takim4.dart';
import 'package:mooi/products_detail/takim5.dart';

class takimPage extends StatelessWidget {
  List<Map> products=[
    {"isim":"Beli Bağlama Detaylı Ceket Yırtmaçlı Etek Maestro Takım","foto": "assets/images/takim1.png","fiyat":"699,90 TL"},
    {"isim":"Pile Detaylı Etek-Crop Cardamom Takım","foto": "assets/images/takim2.png","fiyat":"659,90 TL"},
    {"isim":"Kapaklı Cep Dikişli Derin Yırtmaç Etek-Yelek Avery","foto": "assets/images/takim3.png","fiyat":"679,90 TL"},
    {"isim":"Sandy Kumaş İkili Gemma Takım","foto": "assets/images/takim4.png","fiyat":"219,90 TL"},
    {"isim":"Çiçek Desenli Valentin İkili Takım","foto": "assets/images/takim5.png","fiyat":"339,90 TL"},
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
                        header("TAKIMLAR", context),
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
        if (title == "Beli Bağlama Detaylı Ceket Yırtmaçlı Etek Maestro Takım") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Takim1Page(title)));
        } else if (title  == "Pile Detaylı Etek-Crop Cardamom Takım") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Takim2Page(title)));
        } else if (title  == "Kapaklı Cep Dikişli Derin Yırtmaç Etek-Yelek Avery") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Takim3Page(title)));
        } else if (title == "Sandy Kumaş İkili Gemma Takım") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Takim4Page(title)));
        } else if (title  == "Çiçek Desenli Valentin İkili Takım") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Takim5Page(title)));
        } else {
          return null;
        }
      },
      child: Container(
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
          SizedBox(height: 40),
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