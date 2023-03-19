import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travel_app/view/widget/cust_text.dart';

import 'controller/Constant/color_size.dart';

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
  late BitmapDescriptor markerbitmap;
  getmarkerbitmap() async {
    markerbitmap = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration.empty,
      "assets/image/arrow_location.png",
    );
  }

  oninit() {
    setState(() {
      getmarkerbitmap();
    });
  }

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
                    icon: markerbitmap,
                  ),
                );
              });
            },
            markers: myMarker,
          ),

          Padding(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: TextField(
              //controller: _searchController,
              decoration: InputDecoration(
                filled: true,
                //<-- SEE HERE
                fillColor: Colors.white,
                hintText: 'Search...',
                // Add a clear button to the search bar
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {},
                ),
                // Add a search icon or button to the search bar
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Perform the search here
                  },
                ),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(20.0),
                //
                // ),
              ),
            ),
          ),

          // FloatingActionButton(
          //   onPressed: () {},
          //   child: Icon(Icons.gps_fixed),
          // ),
          // Note: Same code is applied for the TextFormField as well
          DraggableScrollableSheet(
              initialChildSize: .2,
              minChildSize: .2,
              maxChildSize: .5,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                    color: Colors.white,
                    child: ListView(controller: scrollController, children: [
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  width: 120,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      color: k1,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  //<-- SEE HERE
                                  fillColor: Colors.grey.shade100,
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    size: 35,
                                    color: Colors.black,
                                  ),
                                  hintText: "Where to ☺ ? ",
                                  hintStyle:
                                      const TextStyle(color: Colors.black),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 3, color: k1),
                                    //<-- SEE HERE
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.history_rounded,
                                        size: 35,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      CustomText(
                                        text:
                                            "6th street San Francisco station",
                                        color: Colors.grey.shade600,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                    text: "United kingdom, London",
                                    fontsize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                  const Divider(
                                    height: 7,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.history_rounded,
                                        size: 35,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      CustomText(
                                        text: "10th Salesforce park",
                                        color: Colors.grey.shade600,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                    text: "United kingdom, Zag",
                                    fontsize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                  const Divider(
                                    height: 7,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.history_rounded,
                                        size: 35,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      CustomText(
                                        text:
                                            "6th street San Francisco station",
                                        color: Colors.grey.shade600,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                    text: "United kingdom, London",
                                    fontsize: 14,
                                    color: Colors.grey.shade600,
                                  ),
                                  const Divider(
                                    height: 7,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ]));
              })
        ],
      ),
    );
  }
}
