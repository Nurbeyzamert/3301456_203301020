import 'package:flutter/material.dart';
import 'package:mooi/view/categoryPage.dart';
import '../view/bedenPage.dart';
import '../view/loginPage.dart';

class Appbar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  String appbarTitle;

  Appbar({ Key? key, this.appbarTitle = 'mooi'})
      :preferredSize= const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appbarTitle,
        style:
        const TextStyle( fontFamily: "MajorMonoDisplay", color: Color(0xff02040F), fontSize:32, fontWeight: FontWeight.bold,),
      ),

      centerTitle: true,
      backgroundColor: Color(0xffffffff),
      leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu , color: Color(0xffe1b5b2),),
              onPressed: () {
                Navigator.of(context)
                    .push(
                    MaterialPageRoute(builder: (context) => categoryPage()));
              },
            );
          }
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.checkroom_outlined, color: Color(0xffe1b5b2)),
          onPressed: () {Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BedenPage()));},
        ),

        IconButton(
          icon: Icon(Icons.person, color: Color(0xffe1b5b2)),
          onPressed: () {Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => loginPage()));},

        ),],
    );
  }
}