import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:bloc/bloc.dart';

class EscolherPerfil extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    runApp(MaterialApp(
        title: 'BSB GO Perfil usuário',
        home: Stack(
          children: <Widget>[
            Image.asset(
              "imagens/verde.jpg",
              fit: BoxFit.cover,
              height: 1000.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(68.0),
                  child: Text(
                    "Escolha o perfil que melhor descreve você:",
                    style: TextStyle(
                        fontFamily: 'RobotoMono',
                        color: Colors.white,
                        fontSize: 35.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                          child: Text(
                            'Morador',
                            style: TextStyle(fontSize: 26, color: Colors.black),
                          ),
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          height: 60.0,
                          onPressed:(){
                            BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.MapPage);},),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: FlatButton(
                            child: Text(
                              'Turista',
                              style: TextStyle(fontSize: 26,
                                  color: Colors.black),
                            ),
                            color: Colors.white,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            height: 60.0,
                            onPressed: () {}),
                      ),
                      FlatButton(
                          child: Text(
                            'Viagem a Trabalho',
                            style: TextStyle(fontSize: 26, color: Colors.black),
                          ),
                          color: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          height: 60.0,
                          onPressed: () {}),
                      Padding(padding: EdgeInsets.all(30.0)),
                      FlatButton(
                          child: Text(
                            'Pular',
                            style: TextStyle(
                                fontSize: 26, color: Colors.yellow),
                          ),
                          onPressed: () {BlocProvider.of<NavigationBloc>(context).add(NavigationEvents.MapPage);},),
                    ],
                  ),
                )
              ],
            )
          ],
        )));
  }
}