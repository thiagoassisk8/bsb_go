import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';


class Suporte extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suporte ao usuário',textScaleFactor: 1.2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green[700],

      ),
      backgroundColor: Colors.green,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Icon(Icons.support_agent, size: 150, color: Colors.white),



          Divider(height: 50, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),

          Text("Caso esteja com problemas, mande um email para: ",
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
      Text("\nsuportebsbgo@gmail.com",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
      ),

          Divider(height: 50, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),

          Text("\nOu entre em contato via telefone:",
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Text("\n4002-8922\n",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),
          ),
          Divider(height: 50, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
        ],
      ),
    );
  }
}
