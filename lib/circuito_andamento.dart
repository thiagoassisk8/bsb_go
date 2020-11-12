import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Circuitos em adamento'),
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
      body: FlatButton(
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
              )

            ],
          ),
        ),
      ),
    );
  }
}
