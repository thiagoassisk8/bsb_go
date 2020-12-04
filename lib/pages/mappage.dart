import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:bsb_go/model/api.dart';
import 'package:bsb_go/model/circuito_usuario.dart';
import 'dart:convert';


class MapPage extends StatefulWidget with NavigationStates {

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Map<String, String> body = {"user_id": "Zjlq1nMf9XS2SrHc6b0gFHFuBTa2"};
  GoogleMapController mapController;
  final Geolocator _geolocator = Geolocator();
  Set<Marker> markers = new Set<Marker>();
  // ícone verde para o marcador de local
  BitmapDescriptor pinLocationIcon;

  Position _currentPosition;

  // localização torre de tv
  double lat = -15.7905508;
  double long = -47.8949667;

  var circuitoUsuario = new List<CircuitoUsuario>();

  _getPointsForUser() {
    API.getPointsUser(body).then((response) {
      setState(() {
        //print(response.statusCode);
        //print(json.decode(response.body));
        Iterable lista = json.decode(response.body);
        circuitoUsuario = lista.map((model) => CircuitoUsuario.fromJson(model)).toList();
      });
      //print("Circuito: ${circuitoUsuario.length}");
    });
  }

  _MapPageState() {
    _getPointsForUser();
  }


  // define a imagem para o marcador de local
  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'imagens/destination_map_marker.png');
  }


  /*void setMap() {
    Set<Marker> markersAux = new Set<Marker>();
    circuitoUsuario.forEach((point) {
      final Marker marker = Marker(
          markerId: new MarkerId("${point.id}"),
          position: LatLng(point.localizacao.dLatitude, point.localizacao.dLongitude),
          icon: pinLocationIcon,
          infoWindow: InfoWindow(
              title: point.nome,
              snippet: "Brasília/DF"
          ),
          onTap: () {
            AddInfoPontos(context, point.nome);
          }
      );

      print(marker);

    });
  }*/

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;

    // Marker Catedral
    final Marker catedral = Marker(
        markerId: new MarkerId("1"),
        position: LatLng(-15.7983367, -47.8777281),
        icon: pinLocationIcon,
        infoWindow: InfoWindow(
            title: "Catedral de Brasília",
            snippet: "Brasília/DF"
        ),
        onTap: () {
          AddInfoPontos(context, "Catedral de Brasília",Image.asset(
            "imagens/catedral.jpg"
          ));
        }
    );

    // Marker Congresso
    final Marker congresso = Marker(
        markerId: new MarkerId("2"),
        position: LatLng(-15.7997067, -47.8663516),
        icon: pinLocationIcon,
        infoWindow: InfoWindow(
            title: "Congresso Nacional",
            snippet: "Brasília/DF"
        ),
        onTap: () {
          AddInfoPontos(context, "Congresso Nacional",Image.asset(
            "imagens/congresso.jpg",
            fit: BoxFit.fitWidth,
          ));
        }
    );

    // Marker Rodoviária do Plano Piloto
    final Marker rodoviaria = Marker(
        markerId: new MarkerId("3"),
        position: LatLng(-15.7937789, -47.8857071),
        icon: pinLocationIcon,
        infoWindow: InfoWindow(
            title: "Rodoviário do Plano Piloto",
            snippet: "Brasília/DF"
        ),
        onTap: () {
          AddInfoPontos(context, "Rodoviário do Plano Piloto",Image.asset(
            "imagens/rodoviaria.jpg",
            fit: BoxFit.fitWidth,
          ));
        }
    );

    // Marker Praça dos Três Poderes
    final Marker pracaTresPoderes = Marker(
        markerId: new MarkerId("4"),
        position: LatLng(-15.8006637, -47.8634698),
        icon: pinLocationIcon,
        infoWindow: InfoWindow(
            title: "Praça dos Três Poderes",
            snippet: "Brasília/DF"
        ),
        onTap: () {
          AddInfoPontos(context, "Praça dos Três Poderes",Image.asset(
            "imagens/praca3poderes.jpg",
            fit: BoxFit.fitWidth,
          ));
        }
    );

    // Marker Museu Nacional
    final Marker museuNacional = Marker(
        markerId: new MarkerId("5"),
        position: LatLng(-15.797301, -47.8803237),
        icon: pinLocationIcon,
        infoWindow: InfoWindow(
            title: "Museu Nacional",
            snippet: "Brasília/DF"
        ),
        onTap: () {
          AddInfoPontos(context, "Museu Nacional",Image.asset(
            "imagens/museunacional.jpg",
            fit: BoxFit.fitWidth,
          ));
        }
    );

    // Marker Torre de Tv
    final Marker torreTV = Marker(
        markerId: new MarkerId("6"),
        position: LatLng(-15.7905508, -47.8949667),
        icon: pinLocationIcon,
        infoWindow: InfoWindow(
            title: "Torre de TV",
            snippet: "Brasília/DF"
        ),
        onTap: () {
          AddInfoPontos(context, "Torre de TV",Image.asset(
            "imagens/torretv.jpg",
            fit: BoxFit.fitWidth,
          ));
        }
    );

    // Marker Estádio Mané Garrincha
    final Marker maneGarrincha = Marker(
        markerId: new MarkerId("7"),
        position: LatLng(-15.7835139, -47.9013997),
        icon: pinLocationIcon,
        infoWindow: InfoWindow(
            title: "Estádio Mané Garrincha",
            snippet: "Brasília/DF"
        ),
        onTap: () {
          AddInfoPontos(context, "Estádio Mané Garrincha",Image.asset(
            "imagens/mane.jpg",
            fit: BoxFit.fitWidth,
          ));
        }
    );

    // Marker Memorial JK
    final Marker memorialJK = Marker(
        markerId: new MarkerId("8"),
        position: LatLng(-15.7842011, -47.9155431),
        icon: pinLocationIcon,
        infoWindow: InfoWindow(
            title: "Memorial JK",
            snippet: "Brasília/DF"
        ),
        onTap: () {
          AddInfoPontos(context, "Memorial JK",Image.asset(
            "imagens/memorial.jpg",
            fit: BoxFit.fitWidth,
          ));
        }
    );

    setState(() {
      markers.add(catedral);
      markers.add(congresso);
      markers.add(rodoviaria);
      markers.add(pracaTresPoderes);
      markers.add(museuNacional);
      markers.add(torreTV);
      markers.add(maneGarrincha);
      markers.add(memorialJK);
    });

  }

  void AddInfoPontos(context, nomePonto, imagemPonto) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.green[700],
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery
              .of(context)
              .size
              .height * .98,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
                children: <Widget>[

          Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: imagemPonto),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white.withOpacity(1),
                  indent: 0,
                  endIndent: 0,
                ),

                Row(
                  children: <Widget>[
                    Text("${nomePonto}",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'RobotoMono',
                            color: Colors.white)),
                    Padding(padding: EdgeInsets.fromLTRB(95, 0, 10, 0)),
                    Text("Pontos: 200",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'RobotoMono',
                            color: Colors.white)),

                  ],
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  color: Colors.white.withOpacity(1),
                  indent: 0,
                  endIndent: 0,
                ),
                Row(
                    children: <Widget>[
                      FlatButton(
                          onPressed: null,
                          padding: EdgeInsets.fromLTRB(90, 0, 10, 0),
                          child: Image.asset('imagens/botaoplus.png',
                            height: 88,
                            width: 88,)),
                   FlatButton(
                      onPressed: null,
                      child: Image.asset('imagens/gologo.png',
                        height: 88,
                        width: 88,
                      ),
                  ),
                      ]),
        ]),])));
      },
    );
  }

  _getCurrentLocation() async {
    await _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        // Store the position in the variable
        _currentPosition = position;

        print('CURRENT POS: $_currentPosition');

        // For moving the camera to current location
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 12.5,
            ),
          ),
        );
      });
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    setCustomMapPin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        title: Image.asset('imagens/LOGO BSB GO.png',
          height: 110,
          width: 110,
        ),
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(lat, long),
              zoom: 12.5,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: false,
            markers: markers,
            onMapCreated: _onMapCreated,
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 22.0, bottom: 65.0),
                child: ClipOval(
                  child: Material(
                    color: Colors.green, // button color
                    child: InkWell(
                      splashColor: Colors.white, // inkwell color
                      child: SizedBox(
                        width: 56,
                        height: 56,
                        child: Icon(Icons.my_location),
                      ),
                      onTap: () {
                        mapController.animateCamera(
                          CameraUpdate.newCameraPosition(
                            CameraPosition(
                              target: LatLng(
                                _currentPosition.latitude,
                                _currentPosition.longitude,
                              ),
                              zoom: 12.5,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}