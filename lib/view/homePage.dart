import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mooi/components/appbar.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of (context).size.width;
    return Scaffold(
        appBar: Appbar(),
        body: SafeArea(
          child: Stack(
            children:[ Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 24),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: 24, right: 36, top: 14, bottom: 18
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xffe1b5b2),
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "YENİ SEZON",
                                  style: TextStyle( fontFamily: "MontserratSubrayada" , color: Color(0xff02040F), fontSize: 50, fontWeight: FontWeight.w600),)
                              ],
                            ),
                            Image.asset(('images/kalp-yaka.jpg'), width: 200, height: 200,)
                          ],
                        ),
                      )
                  ),
                  SizedBox(height: 10,),
                  Text("Daha fazla keşfet..", style: TextStyle(fontFamily: "Caveat", fontWeight: FontWeight.bold,fontSize:30, color: Color(0xff02040F),),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildUrunler(text: "ELBİSELER", photo: "assets/images/elbise.png" ,screenWidth: screenWidth,),
                      buildUrunler(text: "TAKIMLAR", photo: "assets/images/takim.png" ,screenWidth: screenWidth,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildUrunler(text: "BLUZ-CROP", photo: "assets/images/bluz.png" ,screenWidth: screenWidth,),
                      buildUrunler(text: "PANTOLON", photo: "assets/images/pantolon.png" ,screenWidth: screenWidth, ),
                    ],
                  ),
                  SizedBox(height: 50,)
                ],
              ),
            ),

              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      decoration: BoxDecoration(boxShadow:[BoxShadow(offset: Offset(0,-3), color: Colors.black.withOpacity(0.25), blurRadius: 10)],
                        color: Color(0xffffffff),
                      ),
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buildIcon(iconData: Icons.home_filled, active: true),
                            buildIcon(iconData: Icons.favorite, active: false),
                            buildIcon(iconData: Icons.shopping_basket, active: false),
                            buildIcon(iconData: Icons.search, active: false),
                          ])))

            ],),)
    );
  }
}

Widget buildIcon({required IconData iconData , required bool active,}) {
  return Icon(
      iconData, size: 20, color: Color(active ? 0xffe1b5b2 : 0xff02040F,));
}

Widget buildUrunler({required String text,required String photo, required double screenWidth,}) {
  return Container(
    width: (screenWidth - 60)*0.5,
    padding: EdgeInsets.only(left: 12, top: 12, bottom: 21, right: 12),

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image.asset(photo),),

        SizedBox(height:20,),
        Center(child: Text(text,style: TextStyle(fontFamily: "Caveat", fontWeight: FontWeight.w600 ,fontSize: 18, color: Color(0xff02040F)) )
          ,),
      ],),
  );
}