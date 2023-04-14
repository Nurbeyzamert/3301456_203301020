import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/header.dart';


class Bluz2Page extends StatefulWidget {

  String bluz2Title;

  Bluz2Page(this.bluz2Title);

  @override
  State<Bluz2Page> createState() => _ProductDetailPageState();
}
class _ProductDetailPageState extends State<Bluz2Page> {
  late Color selectedColor = Colors.white;
  late String selectedBeden = "XS";

  List<Color> colors = [
    Color(0xFF63b8ff),
    Color(0xFFba55d3),
    Color(0xFF2e8b57),
    Color(0xFFd2691e),

  ];

  List<String> bedenler = ["XS", "S", "M", "L", "XL", "XXL"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          header(widget.bluz2Title, context),
                          SizedBox(height: 10),

                          Expanded(child:
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0),
                              child: ListView(
                                children: [
                                  SizedBox(height: 25),
                                  Center(child: Image.asset(
                                      "assets/images/bluz2.png")),

                                  SizedBox(height: 30),

                                  Text("Renk", style: TextStyle(
                                      fontFamily: "Caveat",
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffe1b5b2)),
                                  ),
                                  SizedBox(height: 16),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: colors.map((Color color) =>
                                          colorOption(
                                              color: color,
                                              selected: selectedColor == color,
                                              onTap: () {
                                                setState(() {
                                                  selectedColor = color;
                                                });
                                              }
                                          )).toList()),
                                  SizedBox(height: 15,),
                                  Text("Beden", style: TextStyle(
                                      fontFamily: "Caveat",
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffe1b5b2)),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children:
                                      bedenler.map((String beden) =>
                                          bedenOption(beden: beden,
                                              selected: selectedBeden == beden,
                                              onTap: () {
                                                setState(() {
                                                  selectedBeden = beden;
                                                });
                                              }
                                          )).toList()),

                                  SizedBox(height: 32),
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.symmetric(vertical: 16),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: Color(0xffe1b5b2)),
                                    child: Text("Sepete Ekle",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: "Caveat",
                                          color: Color(0xffffffff),
                                          fontSize: 35,
                                          fontWeight: FontWeight.w600),),
                                  ),
                                  SizedBox(height: 50,),
                                ],)))
                        ]),),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          decoration: BoxDecoration(
                            boxShadow:[BoxShadow(
                                offset: Offset(0,-3),
                                color: Colors.black.withOpacity(0.25),
                                blurRadius: 10)],
                            color: Color(0xffffffff),),
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
                ])));
  }
}
Widget colorOption({required Color color, required bool selected, required VoidCallback onTap}){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border:
          Border.all(color: Color(0xffe1b5b2), width: selected ? 4:0)),
      width: 23,
      height: 23,
    ),
  );
}

Widget bedenOption({required String beden,required bool selected,required VoidCallback onTap}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 25),
        child: Text(
            beden, style: TextStyle( fontFamily: "Caveat",
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Color(selected ? 0xffe1b5b2:0xFFA7A9BE),
        )),
      ));
}

Widget buildIcon({required IconData iconData , required bool active,}) {
  return Icon(
      iconData, size: 20, color: Color(active ? 0xffe1b5b2 : 0xff02040F,));
}