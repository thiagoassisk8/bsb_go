import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';


class MapPage extends StatelessWidget with NavigationStates {
  GoogleMapController mapController;

  // Catedral de Brasília
  double lat = -15.7983367;
  double long = -47.8777281;

  Set<Marker> markers = new Set<Marker>();

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;

    // Marker Catedral
    final Marker catedral = Marker(
      markerId: new MarkerId("1"),
      position: LatLng(-15.7983367, -47.8777281),
      infoWindow: InfoWindow(
          title: "Catedral de Brasília",
          snippet: "Brasília/DF"
      ),
    );

    // Marker Congresso
    final Marker congresso = Marker(
      markerId: new MarkerId("2"),
      position: LatLng(-15.7997067, -47.8663516),
      infoWindow: InfoWindow(
          title: "Congresso Nacional",
          snippet: "Brasília/DF"
      ),
    );

    // Marker Rodoviária do Plano Piloto
    final Marker rodoviaria = Marker(
      markerId: new MarkerId("3"),
      position: LatLng(-15.7937789, -47.8857071),
      infoWindow: InfoWindow(
          title: "Rodoviário do Plano Piloto",
          snippet: "Brasília/DF"
      ),
    );

    // Marker Praça dos Três Poderes
    final Marker pracaTresPoderes = Marker(
      markerId: new MarkerId("4"),
      position: LatLng(-15.8006637, -47.8634698),
      infoWindow: InfoWindow(
          title: "Praça dos Três Poderes",
          snippet: "Brasília/DF"
      ),
    );

    // Marker Museu Nacional
    final Marker museuNacional = Marker(
      markerId: new MarkerId("5"),
      position: LatLng(-15.797301, -47.8803237),
      infoWindow: InfoWindow(
          title: "Museu Nacional",
          snippet: "Brasília/DF"
      ),
    );

    // Marker Torre de Tv
    final Marker torreTV = Marker(
      markerId: new MarkerId("6"),
      position: LatLng(-15.7905508, -47.8949667),
      infoWindow: InfoWindow(
          title: "Torre de TV",
          snippet: "Brasília/DF"
      ),
    );

    // Marker Estádio Mané Garrincha
    final Marker maneGarrincha = Marker(
      markerId: new MarkerId("7"),
      position: LatLng(-15.7835139, -47.9013997),
      infoWindow: InfoWindow(
          title: "Estádio Mané Garrincha",
          snippet: "Brasília/DF"
      ),
    );

    // Marker Memorial JK
    final Marker memorialJK = Marker(
      markerId: new MarkerId("8"),
      position: LatLng(-15.7842011, -47.9155431),
      infoWindow: InfoWindow(
          title: "Memorial JK",
          snippet: "Brasília/DF"
      ),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(lat, long),
          zoom: 12.5,
        ),
        markers: markers,
      ),
    );
  }
}