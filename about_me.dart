import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("ABOUT ME"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.lightGreenAccent,
            child: Stack(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 30),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(image: AssetImage('images/andy.jpg'),
                      fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.lightGreenAccent,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text('I Ketut Andy Septawan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('andy.septawan@undiksha.ac.id',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.redAccent.withOpacity(0.6)
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, right: 50, left: 50),
            child: Column(

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.home, color: Colors.grey, size: 58,),
                            Text('Banyuning', style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                        ),
                        child: Padding(padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.my_location,color: Colors.red,size: 58),
                              Text('Singaraja',style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                        ),

                        child: Padding(padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.music_note,color: Colors.orangeAccent,size: 58),
                            Text('Rock', style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                        ),
                        child: Padding(padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.school,color: Colors.black,size: 58),
                            Text('Undiksha',style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          ],
                        ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
