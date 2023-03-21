// ignore_for_file: prefer_final_fields, prefer_const_constructors, library_private_types_in_public_api

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(30.08897567916466, 31.31922124020834),
    zoom: 14.4746,
  );
  LatLng currentLocation = _initialCameraPosition.target;

  var myMarker = HashSet<Marker>();

////////////////

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
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
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(width: 16),
                  Icon(Icons.search, size: 24),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.mic, size: 24),
                  SizedBox(width: 16),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: 'Layers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions),
            label: 'Directions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.navigation),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
