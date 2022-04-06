import 'package:flutter/material.dart';
import 'package:untitled/turistikYerler.dart';

class ankara extends StatefulWidget {
  const ankara({Key? key}) : super(key: key);

  @override
  State<ankara> createState() => _ankaraState();
}

class _ankaraState extends State<ankara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent[400],
        title: Text("ANKARA"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            FloatingActionButton.extended(
              backgroundColor: Colors.deepPurpleAccent[400],
                onPressed: (){ Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => turistikYerler()));},
                label: Text(
                    "Turistik Yerler",
                style: TextStyle(
                  fontFamily: "SourceSerifPro",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                )),),

            SizedBox(height: 10,),
            FloatingActionButton.extended(
              backgroundColor: Colors.deepPurpleAccent[400],
              onPressed: (){},
              label: Text(
                  "Tarihi Yerler",
                  style: TextStyle(
                    fontFamily: "SourceSerifPro",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )),),
            SizedBox(height: 10,),
            FloatingActionButton.extended(
              backgroundColor: Colors.deepPurpleAccent[400],
              onPressed: (){},
              label: Text(
                  "Ünlü Lezzetler",
                  style: TextStyle(
                    fontFamily: "SourceSerifPro",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  )),),



          ],
        ),
      ),
    );
  }
}
