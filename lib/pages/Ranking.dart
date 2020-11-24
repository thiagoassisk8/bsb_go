import 'package:flutter/material.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'dart:async';
import 'dart:convert';
import 'package:bsb_go/model/user.dart';
import 'package:bsb_go/model/api.dart';

class Ranking extends StatefulWidget with NavigationStates {
  @override
  _RankingState createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
  var users = new List<User>();
  List<TableRow> rows = new List<TableRow>();

  criarLinhas() {
    print(users.length);
    for(User user in users) {

      rows.add(
          new TableRow(
            children: [
              Text("\n${user.nome}",
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: Colors.white)),
              Text("\n${user.pontuacao}",
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: Colors.white)),
              Image.asset("imagens/2lugar.png", scale: 5,
                height: 70,
                width: 70,
              ),
            ],
          )
      );
      return SingleChildScrollView(child: new Table(children: rows));
    }
  }

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        users = lista.map((model) => User.fromJson(model)).toList();
      });

    });
  }

  _RankingState() {
    _getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking de usuários',textScaleFactor: 1.2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green,
      body: criarTabela(),

    );
  }

  criarTabela() {
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
        )
      ),
        Divider(
          height: 10,
          thickness: 1,
          color: Colors.white.withOpacity(1),
          indent: 0,
          endIndent: 0,
        ),
      Table(
        border: TableBorder(horizontalInside: BorderSide(width: 1, color: Colors.white, style: BorderStyle.solid)),
        children:[
          for(int i = 0; i < users.length; ++i )  TableRow(
            children: [
              Text("\n${i+1}",
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: Colors.white)
              ),
              Text("\n${users[i].nome}",
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.5,
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: Colors.white)
              ),
              Text("\n${users[i].pontuacao}",
                  textScaleFactor: 1.5,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'RobotoMono',
                      color: Colors.white),
              ),
            ],
          )]
      ),
    ]
    );
  }


}
