import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class Login extends StatelessWidget with NavigationStates{
  Widget build(BuildContext context) {
    runApp(MaterialApp(
        title: 'BSB GO Login',
        home: Stack(
          children: <Widget>[
            Image.asset(
              "imagens/login2.jpg",
              fit: BoxFit.fill,
              height: 1000.0,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(65, 115, 65, 25),
                child: Image.asset(
                  "imagens/LOGO BSB GO.png",
                  fit: BoxFit.fitWidth,
                )),

            Container(child: ConstrainedBox(
                constraints: BoxConstraints.expand(),
                child: FlatButton(
                  onPressed: null,
                  padding: EdgeInsets.all(70.0),
                  child: Image.asset("imagens/signin_bt.png"),
                )
            )),
          ],
        )));
  }
}
