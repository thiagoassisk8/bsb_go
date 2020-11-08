import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';


class Circuitos extends StatelessWidget with NavigationStates {
  final List<String> names = <String>['Congresso Nacional', 'Ponte JK', 'Torre de Tv'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circuitos',textScaleFactor: 1.2, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.green[700],

      ),
      backgroundColor: Colors.white,
      body: Column(
          children: <Widget>[
            Expanded(
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
                        'Congresso Nacional',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
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
                        'Ponte JK',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
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
                        'Torre de Tv',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
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
                        'Catedral de Brasília',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
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
                        'Estádio Nacional',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
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
                        'Lago Paranoá',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,),),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
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
                        'Memorial Jk',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
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
                        'Museu Nacional',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
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
                        'Eixo Monumental',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),
            Divider(height: 0, thickness: 1, color: Colors.white.withOpacity(0.8), indent: 0, endIndent: 0,),
            Expanded(
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
                        'Praça dos Três Poderes',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.alt_route_outlined,
                        color: Colors.white,
                      ),],),),),),

          ]
      ),
    );
  }
}
