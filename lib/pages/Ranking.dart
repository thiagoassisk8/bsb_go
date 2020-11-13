import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';

class Ranking extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking de usuários',textScaleFactor: 1.2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green,
      body:

      FutureBuilder<Map>(
          future: getData(),
          builder: (context, snapshot) {
            switch(snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Column(
                  children: <Widget>[
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
                                padding: EdgeInsets.only(left: 50.0),
                                child: Text("ID",
                                    textScaleFactor: 1.5,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        color: Colors.white,
                                        fontSize: 15.5))),
                            Padding(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Text("  Pontuação",
                                    textScaleFactor: 1.5,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'RobotoMono',
                                        color: Colors.white,
                                        fontSize: 15.5))),
                          ],
                        )),
                    Divider(
                      height: 10,
                      thickness: 1,
                      color: Colors.white.withOpacity(1),
                      indent: 0,
                      endIndent: 0,
                    ),
                    Table(
                      textDirection: TextDirection.rtl,
                      //defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                      border: TableBorder(horizontalInside: BorderSide(width: 1, color: Colors.white, style: BorderStyle.solid)),
                      children: [
                        TableRow(
                          children: [
                            Text("\n3500",
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    fontFamily: 'RobotoMono',
                                    color: Colors.white)),
                            Text("\nUsuário 1",
                                textScaleFactor: 1.5,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'RobotoMono',
                                    color: Colors.white)),
                            Image.asset("imagens/1lugar.png", scale: 5,
                              height: 70,
                              width: 70,),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text("\n1500",
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    fontFamily: 'RobotoMono',
                                    color: Colors.white)),
                            Text("\nUsuário 2",
                                textScaleFactor: 1.5,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'RobotoMono',
                                    color: Colors.white)),
                            Image.asset("imagens/2lugar.png", scale: 5,
                              height: 70,
                              width: 70,),
                          ],
                        ),
                        TableRow(
                          children: [
                            Text("\n1000",
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    fontFamily: 'RobotoMono',
                                    color: Colors.white)),
                            Text("\nUsuário 3",
                                textScaleFactor: 1.5,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'RobotoMono',
                                    color: Colors.white)),
                            Image.asset("imagens/3lugar.png", scale: 5,
                              height: 70,
                              width: 70,),
                          ],
                        ),
                        _criarLinhaTable("100,Usuário 4, 4"),
                        _criarLinhaTable("100,Usuário 5, 5"),

                      ],
                    ),
                  ],
                );




              default:
                if(snapshot.hasError){
                  return Center(
                      child: Text("Deu ruim no snapshot...",
                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 25.0),
                        textAlign: TextAlign.center,)
                  );
                }else{
                  return Center(
                      child: Text("Deu ruim no snapshot...",

                        style: TextStyle(
                            color: Colors.amber,
                            fontSize: 25.0),
                        textAlign: TextAlign.center,)
                  );
                }
            }

          }

      ),
    );
  }

  _criarLinhaTable(String listaNomes) {
    return TableRow(
      children: listaNomes.split(',').map((name) {
        return Container(
          alignment: Alignment.center,
          child: Text(
            name,
            textScaleFactor: 1.5,
            style: TextStyle(fontFamily: 'RobotoMono',
                color: Colors.white),
          ),
          padding: EdgeInsets.all(20.0),
        );
      }).toList(),
    );
  }


  Future<Map> getData() async {
    QuerySnapshot snapshot = await Firestore.instance.collection('usuarios').getDocuments();
    snapshot.documents.forEach((d) {
      print("------------------------------");
      print("Nome: ${d.data['nome']}");
      print("Pontuação: ${d.data['pontuacao']}");
      print("------------------------------");
    });
  }


  _criarTexto(){

  }


}// Final da classe