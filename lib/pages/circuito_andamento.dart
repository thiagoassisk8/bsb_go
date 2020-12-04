import 'package:bsb_go/pages/mappage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';



class CircuitosAndamento extends StatelessWidget with NavigationStates {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Circuitos em andamento',textScaleFactor: 1.2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green,
      body: FlatButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MapPage()));},
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Centro de Brasília',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              Icon(
                Icons.alt_route_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

}