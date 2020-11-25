import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:geolocator/geolocator.dart';


class MapPage extends StatefulWidget with NavigationStates {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController mapController;
  final Geolocator _geolocator = Geolocator();

  BitmapDescriptor pinLocationIcon;

  // For storing the current position
  Position _currentPosition;

  // Torre de Tv
  double lat = -15.7905508;
  double long = -47.8949667;

  // Catedral de Brasília
  //double lat = -15.7983367;
  // double long = -47.8777281;

  Set<Marker> markers = new Set<Marker>();

  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'imagens/destination_map_marker.png');
  }

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
          AddInfoPontos(context);
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
          AddInfoPontos(context);
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
          AddInfoPontos(context);
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
          AddInfoPontos(context);
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
          AddInfoPontos(context);
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
          AddInfoPontos(context);
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
          AddInfoPontos(context);
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
          AddInfoPontos(context);
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


  void AddInfoPontos(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery
              .of(context)
              .size
              .height * .45,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                children: <Widget>[
            Row(
            children: <Widget>[
                Text("NOME DO LOCAL",
                style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'RobotoMono',
                    color: Colors.green)),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.cancel,
                color: Colors.green,
                size: 25,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
            ],
          ),
          Column(
              children: <Widget>[
                Image.asset('imagens/infobsb.jpg',
                ),
                Row(
                    children: <Widget>[
                      FlatButton(
                          onPressed: null,
                          padding: EdgeInsets.only(left: 60.0),
                          child: Image.asset('imagens/gobutton.png',
                            height: 85,
                            width: 85,)

                      ),
                   FlatButton(
                          onPressed: null,
                          padding: EdgeInsets.only(left: 50.0),
                          child: Image.asset('imagens/plusbutton.png',
                            height: 85,
                            width: 85,)

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