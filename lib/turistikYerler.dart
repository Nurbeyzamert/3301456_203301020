import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class turistikYerler extends StatefulWidget {
  const turistikYerler({Key? key}) : super(key: key);

  @override
  State<turistikYerler> createState() => _turistikYerlerState();
}

class _turistikYerlerState extends State<turistikYerler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text("TURİSTİK YERLER"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ANITKABİR", style: TextStyle(fontSize: 30, color:Colors.white)),
            Image.asset(("images/anitkabir-2095-f6.jpg"),width: 400,height: 500,),
            Text("Ankara gezilecek yerler denildiğinde ilk akla gelen yer, adı Ankara ile özdeşleşen, Türkiye’nin en önemli ve en ihtişamlı tarihi eserlerden biri olan, Atatürk’ün kabrinin bulunduğu Anıttepe’deki Anıtkabir. Barış Parkı ve Anıt Bloku (Aslanlı Yol, Tören Meydanı ve Mozole) olmak üzere iki ana bölümden oluşan Anıtkabir kompleksi içerisinde, 10 kule ve Anıtkabir Atatürk ve Kurtuluş Savaşı Müzesi bulunuyor.", style: TextStyle(fontSize: 18, color:Colors.white)),
          ],
        ),
      ),
    );
  }
}
