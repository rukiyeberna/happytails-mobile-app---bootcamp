import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class harita extends StatefulWidget {
  const harita({super.key});

  @override
  State<StatefulWidget> createState() => _haritaState();
}

class _haritaState extends State<harita> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(39.920615, 32.853689);
  static const LatLng destination = LatLng(39.920615, 32.853689);

  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;

  void getCurrentLocation() async {
    Location location = Location();

    location.getLocation().then(
      (location) {
        setState(() {
          currentLocation = location;
        });
      },
    );

    GoogleMapController googleMapController = await _controller.future;

    location.onLocationChanged.listen((newLoc) {
      currentLocation = newLoc;

      googleMapController
          .animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
              zoom: 14,
              target: LatLng(
                newLoc.latitude!,
                newLoc.longitude!,
              ))));

      setState(
        () {},
      );
    });
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyASJBJQq-ucmD0pWBrNnFp2SfU8pagPcQk",
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );

    if (result.points.isNotEmpty) {
      for (var point in result.points) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      }

      setState(() {});
    }
  }

  @override
  void initState() {
    getCurrentLocation();
    super.initState();
    getPolyPoints();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Harita',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Navigate to the Home screen when the home icon is clicked
              Navigator.of(context).pop();
            } // BURAYA ANA MENUYE GIDEN YONLENDIRMEYI YAPPPPPPPPPPP
            ),
      ),
      body: currentLocation == null
          ? const Center(
              child: Text("Yükleniyor"),
            )
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                  target: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                  zoom: 12),
              polylines: {
                Polyline(
                  polylineId: const PolylineId("route"),
                  points: polylineCoordinates,
                  color: Colors.yellowAccent,
                  width: 6,
                ),
              },
              markers: {
                const Marker(
                  markerId: MarkerId("source"),
                  position: sourceLocation,
                ),
                Marker(
                  markerId: const MarkerId("currentLocation"),
                  position: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                ),
                const Marker(
                  markerId: MarkerId("destination"),
                  position: destination,
                ),
              },
              onMapCreated: (mapController) {
                _controller.complete(mapController);
              },
            ),
    );
  }
}
