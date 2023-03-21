// ignore_for_file: prefer_const_constructors

import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(30.08897567916466, 31.31922124020834),
    zoom: 14.4746,
  );
  LatLng currentLocation = _initialCameraPosition.target;
  var myMarker = HashSet<Marker>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            mapType: MapType.normal,
            onCameraMove: (CameraPosition newPos) {},
            onMapCreated: (GoogleMapController controller) {
              setState(() {
                myMarker.add(
                  Marker(
                    markerId: MarkerId('1'),
                    position: LatLng(30.08897567916466, 31.31922124020834),
                    infoWindow: InfoWindow(
                        title: "Your Location",
                        snippet: "This is your Location Now "),
                  ),
                );
              });
            },
            markers: myMarker,
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search...',
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {},
                ),
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
