import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';



void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final List<String> names = <String>['Congresso Nacional', 'Ponte JK', 'Torre de Tv'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circuitos'),
        backgroundColor: Colors.green,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
            size: 36.0,
            color: Colors.yellow,

          ),
        ),
        actions:<Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.menu,

              ),
            ),
          ),

        ],

      ),
      backgroundColor: Colors.green,
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
                      ),

                    ],
                  ),
                ),
              ),
            ),
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

                      ),
                    ],
                  ),
                ),
              ),
            ),
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
                      ),

                    ],
                  ),
                ),
              ),
            ),
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
                      ),

                    ],
                  ),
                ),
              ),
            ),
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
                      ),

                    ],
                  ),
                ),
              ),
            ),
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
            ),
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
                      ),

                    ],
                  ),
                ),
              ),
            ),
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
                      ),

                    ],
                  ),
                ),
              ),
            ),
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
                      ),

                    ],
                  ),
                ),
              ),
            ),
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
