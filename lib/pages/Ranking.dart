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
      body: listaUsuarios(),

    );
  }

  listaUsuarios() {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              users[index].nome,
              style: TextStyle(fontSize: 20.0),
            ),
          );
        }
    );
  }

}
