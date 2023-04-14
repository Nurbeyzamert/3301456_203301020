import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import '../components/header.dart';
import 'package:mooi/products_detail/pantolon1.dart';
import 'package:mooi/products_detail/pantolon2.dart';
import 'package:mooi/products_detail/pantolon3.dart';


class pantolonPage extends StatelessWidget {
  List<Map> products=[
    {"isim":"Yüksek Bel Deri Benjamin Pantolon","foto": "assets/images/pantolon1.png","fiyat":"399,90 TL"},
    {"isim":"Yumuşak Vegan Deri Cioran Pantolon","foto": "assets/images/pantolon2.png","fiyat":"419,90 TL"},
    {"isim":"Çiçek Desenli Gabardin Pantolon","foto": "assets/images/pantolon3.png","fiyat":"199,90 TL"},

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
                        header("PANTOLON", context),
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
  return  GestureDetector(
      onTap: () {
        if (title == "Yüksek Bel Deri Benjamin Pantolon") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Pantolon1Page(title)));
        } else if (title  == "Yumuşak Vegan Deri Cioran Pantolon") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Pantolon2Page(title)));
        } else if (title == "Çiçek Desenli Gabardin Pantolon") {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Pantolon3Page(title)));
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