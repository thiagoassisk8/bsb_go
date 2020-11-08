import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';


class Configuracoes extends StatelessWidget with NavigationStates {
  final List<String> names = <String>['Congresso Nacional', 'Ponte JK'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações',textScaleFactor: 1.2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green[700],

      ),
      backgroundColor: Colors.green,
      body: Column(
          children: <Widget>[
            Flexible(
              child: FlatButton(
                onPressed: () {},
                color: Colors.green,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Editar Nome',
                        style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,

                        ),
                      ),
                      Icon(
                        Icons.sticky_note_2_sharp,
                        size: 40,
                        color: Colors.white,
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              child: FlatButton(
                onPressed: () {},
                color: Colors.green,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Text(
                        'Excluir Conta',
                        style: TextStyle(
                          fontSize: 22.5,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),

                      Icon(
                        Icons.restore_from_trash_sharp,
                        size: 40,
                        color: Colors.white,

                      ),
                    ],
                  ),
                ),
              ),
            ),


          ]
      ),
    );
  }
}
