import 'package:flutter_application_1/custom_icons_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class MyStandort extends StatefulWidget {
  const MyStandort({Key? key}) : super(key: key);

  @override
  _MyStandortState createState() => _MyStandortState();
}

class _MyStandortState extends State<MyStandort> {
  LocationData? currentLocation;

  void getCurrentLocation() {
    Location location = Location();
    location.getLocation().then((location) {
      setState(() {
        currentLocation = location;
      });
    });
  }

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentLocation == null
          ? const Center(
              child: Text('Wird geladen'),
            )
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                  target: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                  zoom: 15),
              myLocationButtonEnabled: false,
              mapToolbarEnabled: true,
              mapType: MapType.terrain,
              myLocationEnabled: true,
              markers: {
                Marker(
                  markerId: const MarkerId('Current Location'),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
              },
            ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: const Color(0XFFF78556),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(width: 32),
                  const Icon(
                    CustomIcons.mapPin,
                    size: 16.0,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'Standort finden',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(width: 32),
                ]),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Icon(
                Icons.favorite_border,
                color: Color(0XFFF78556),
                size: 24,
              ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
