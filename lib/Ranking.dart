import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pontuacao = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking de usuários',textScaleFactor: 1.3),
        backgroundColor: Colors.green,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
            size: 36.0,
            color: Colors.yellow,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.green,
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
        ),
        Padding(
            padding: const EdgeInsets.all(3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("Posição",
                        textScaleFactor: 1.5,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RobotoMono',
                            color: Colors.white,
                            fontSize: 15.5))),
                Padding(
                    padding: EdgeInsets.only(left:50.0),
                    child: Text("ID",
                    textScaleFactor: 1.5,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoMono',
                        color: Colors.white,
                        fontSize: 15.5))),
                Padding(
                    padding: EdgeInsets.only(left:30.0),
                    child: Text("  Pontuação",
                    textScaleFactor: 1.5,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RobotoMono',
                        color: Colors.white,
                        fontSize: 15.5))),
              ],
            )),
        Table(

          textDirection: TextDirection.rtl,
          //defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          border:TableBorder.all(width: 3.0,color: Colors.white),
          children: [
            TableRow(
                children: [
                  Text("1000",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                      color: Colors.white,
                      fontSize: 15.0)),
                  Text("Usuário 1",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                      color: Colors.white,
                      fontSize: 15.0)),
                  Image.asset(
                    "images/1ugar.png",
                    fit: BoxFit.fill,
                  ),
                ]
            ),
            TableRow(
                children: [
                  Text("900",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                      color: Colors.white,
                      fontSize: 15.0)),
                  Text("Usuário 2",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                      color: Colors.white,
                      fontSize: 15.0)),
                  Text("Segundo Lugar",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                      color: Colors.white,
                      fontSize: 15.0)),
                ]
            ),
            TableRow(
                children: [
                  Text("800",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                      color: Colors.white,
                      fontSize: 15.0)),
                  Text("Usuário 3",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                      color: Colors.white,
                      fontSize: 15.0)),
                  Text("Terceiro Lugar",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                      color: Colors.white,
                      fontSize: 15.0)),
                ]
            ),
          ],
        ),
      ]),
    );
  }
}
