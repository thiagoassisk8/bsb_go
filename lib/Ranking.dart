import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking123'),
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
      body: Column(
          children:<Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Table(

                 textDirection: TextDirection.rtl,
                 //defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                 border:TableBorder.all(width: 2.0,color: Colors.white),
                children: [
                  TableRow(
                      children: [
                        Text("Pontuação",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                            color: Colors.white,
                            fontSize: 15.5)),
                        Text("ID",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                            color: Colors.white,
                            fontSize: 15.5)),
                        Text("Posição",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                            color: Colors.white,
                            fontSize: 15.5)),
                      ]
                  ),
                  TableRow(
                      children: [
                        Text("1000",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                            color: Colors.white,
                            fontSize: 15.0)),
                        Text("Usuário",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                            color: Colors.white,
                            fontSize: 15.0)),
                        Text("Primeiro Lugar",textScaleFactor: 1.5,style: TextStyle(fontFamily: 'RobotoMono',
                            color: Colors.white,
                            fontSize: 15.0)),
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
            ),
          ]
      ),

    );
  }
}

