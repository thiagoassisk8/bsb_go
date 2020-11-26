import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:bsb_go/pages/mappage.dart';
import 'package:bsb_go/model/circuito.dart';
import 'package:bsb_go/model/api.dart';
import 'dart:convert';


class Circuitos extends StatefulWidget with NavigationStates {

  @override
  _CircuitosState createState() => _CircuitosState();

}

class _CircuitosState extends State<Circuitos>{
  var circuitos = new List<Circuito>();

  _getAllCircuits() {
    API.getCircuits().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        circuitos = lista.map((model) => Circuito.fromJson(model)).toList();
      });

    });
  }

  _CircuitosState() {
    _getAllCircuits();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circuitos',textScaleFactor: 1.2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      backgroundColor: Colors.green,
      body: ListView.builder(
        itemCount: circuitos.length,
        itemBuilder: (context, index) {
          return FlatButton(
            onPressed: () {
              //print(circuitos[index].id);
            },
            color: Colors.green,
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '${circuitos[index].nome}',
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
          );
        },
      ),
    );
  }
}
