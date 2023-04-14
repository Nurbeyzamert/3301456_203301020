import "package:mooi/view/homePage.dart";
import 'package:flutter/material.dart';


class BedenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Beden Hesaplayıcı",
      debugShowCheckedModeBanner: false,
      home: BedenHesaplayici(),
    );
  }
}

class BedenHesaplayici extends StatefulWidget {
  @override
  _BedenHesaplayiciState createState() => _BedenHesaplayiciState();
}

class _BedenHesaplayiciState extends State<BedenHesaplayici> {
  final Map<String, Map<int, String>> bedenHarfMap = {
    'Kadın': {
      34: 'XS',
      36: 'S',
      38: 'M',
      40: 'L',
      42: 'XL',
      44: 'XXL',
    },
    'Erkek': {
      44: 'XS',
      46: 'S',
      48: 'M',
      50: 'L',
      52: 'XL',
      54: 'XXL',
    }
  };

  final TextEditingController _bedenController = TextEditingController();
  String _cinsiyet = 'Kadın';
  String _harfBeden = '';

  void _hesaplaBeden() {
    int beden = int.tryParse(_bedenController.text) ?? 0;
    setState(() {
      _harfBeden =
      (bedenHarfMap[_cinsiyet]?.containsKey(beden) ?? false)
          ? bedenHarfMap[_cinsiyet]![beden]!
          : 'Bulunamadı';
    });
  }

  @override
  void dispose() {
    _bedenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffe1b5b2),
        title: Text('Beden Hesaplayıcı', style: TextStyle(fontFamily:"Cinzel",
          fontSize: 20,
          color: Color(0xffffffff),
        ),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButtonFormField<String>(
                value: _cinsiyet,
                items: ['Kadın', 'Erkek']
                    .map((label) => DropdownMenuItem(
                  child: Text(label),
                  value: label,
                ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _cinsiyet = value ?? 'Kadın';
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _bedenController,
                decoration: InputDecoration(hintText: 'Beden Numarası'),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color(0xffe1b5b2)
                ),
                onPressed: _hesaplaBeden,
                child: Text('Bedeni Göster', style: TextStyle(fontFamily: "Cinzel"),),
              ),
              SizedBox(height: 16.0),
              Text(
                'Seçilen beden: $_harfBeden',
                style: TextStyle(fontFamily: "Cinzel", fontSize: 24.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}