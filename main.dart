import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'about_me.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/Halsatu' : (BuildContext context) => new Home(),
      '/Haldua' : (BuildContext context) => new MyProfil(),
    },
  ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tinggi = 0;
  int berat = 0;
  int tahun = 0;
  int bulan = 0;
  int tanggal = 0;

  String _jk="";

  void _pilihJk(String value){
    setState((){
      _jk = value;
    });
  }

  TextEditingController _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_list),
        title: new Text('Menghitung BMI'),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.person_outline),
            onPressed: (){
              Navigator.pushNamed(context, '/Haldua');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              child: Image.asset('images/BMI.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _nama,
                    decoration: new InputDecoration(
                        hintText: "Masukan Nama",
                        labelText: "Masukan Nama",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0)
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0)),

                  Container(
                    child: Column(
                      children: <Widget> [
                        TextField(
                          onChanged: (txt){
                            setState(() {
                              tahun = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 4,
                          decoration: new InputDecoration(
                            hintText: "Masukan Tahun Lahir",
                            labelText: "Tahun Lahir",
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0)),

                  new TextField(
                    onChanged: (txt){
                      setState(() {
                        bulan = int.parse(txt);
                      });
                    },

                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    decoration: new InputDecoration(
                        hintText: "Masukan Bulan Lahir",
                        labelText: "Bulan Lahir",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0)
                        )
                    ),
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0)),

                  new TextField(
                    onChanged: (txt){
                      setState(() {
                        tanggal = int.parse(txt);
                      });
                    },

                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    decoration: new InputDecoration(
                        hintText: "Masukan Tanggal Lahir",
                        labelText: "Tanggal Lahir",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0)
                        )
                    ),
                  ),

                  Container(
                    child: Column(
                      children: [
                        Text ('Jenis Kelamin', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  new RadioListTile(
                    value: "Laki-laki",
                    groupValue: _jk,
                    title: new Text("Laki-laki"),
                    onChanged: (String value){
                      _pilihJk(value);
                    },
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 0.0)),

                  new RadioListTile(
                    value: "Perempuan",
                    groupValue: _jk,
                    title: Text('Perempuan'),
                    onChanged: (String value) {
                      _pilihJk(value);
                    },
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0)),

                  new Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              tinggi = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                              labelText: "Tinggi",
                              suffix: Text('cm'),
                              border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(10.0)
                              ),
                              hintText: 'Tinggi'),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              berat = int.parse(txt);
                            });
                          },

                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                              labelText: "Berat",
                              suffix: Text('kg'),
                              border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(10.0)
                              ),
                              hintText: 'Berat'),
                        ),
                      ),
                    ],
                  ),

                  new Padding(padding: new EdgeInsets.only(top: 20.0)),

                  Container(
                    //height: double.infinity,
                    margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                    child: RaisedButton(
                      onPressed: () {
                        var route = new MaterialPageRoute(builder: (context)=> BMIResult(nama_lengkap: _nama.text,tinggi_badan: tinggi, berat_badan: berat, tahun_lahir: tahun, bulan_lahir: bulan, tanggal_lahir: tanggal,jk: _jk,),
                        );
                        Navigator.of(context).push(route);
                      },
                      padding: EdgeInsets.all(10.0),
                      color: Colors.amber,
                      textColor: Colors.white,
                      child: Text(
                        'Hitung BMI',
                        style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
