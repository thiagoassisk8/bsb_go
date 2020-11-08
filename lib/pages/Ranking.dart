import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

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
        body: criaTabela());
  }

  criaTabela() {
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
        Table(
          textDirection: TextDirection.rtl,
          //defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          border: TableBorder.all(width: 3.0, color: Colors.white),
          children: [
            TableRow(
              children: [
                Text("1000",
                    textScaleFactor: 1.5,
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: Colors.white,
                        fontSize: 15.0)),
                Text("Usuário 1",
                    textScaleFactor: 1.5,
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: Colors.white,
                        fontSize: 15.0)),
                Image.asset("imagens/1lugar.png", scale: 5),
              ],
            ),
            _criarLinhaTable("100, Usuário1, 1"),
            _criarLinhaTable("50, Usuário2,"),
            _criarLinhaTable("0, Usuário3, 3"),
          ],
        ),
      ],
    );
  }

  _criarLinhaTable(String listaNomes) {
    return TableRow(
      children: listaNomes.split(',').map((name) {
        return Container(
          alignment: Alignment.center,
          child: Text(
            name,
            style: TextStyle(fontSize: 20.0),
          ),
          padding: EdgeInsets.all(8.0),
        );
      }).toList(),
    );
  }
}
