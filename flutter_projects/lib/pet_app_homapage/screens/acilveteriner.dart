import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Veteriner {
  String ad;
  double latitude;
  double longitude;

  Veteriner(
      {required this.ad, required this.latitude, required this.longitude});
}

class acilVeterinerler extends StatefulWidget {
  @override
  _acilVeterinerlerState createState() => _acilVeterinerlerState();
}

class _acilVeterinerlerState extends State<acilVeterinerler> {
  Completer<GoogleMapController> _haritaController =
      Completer<GoogleMapController>();
  late LocationData _konum;
  List<Veteriner> _veterinerler = [
    Veteriner(
        ad: "Vena Hayvan Hastanesi",
        latitude: 39.990931969463574,
        longitude: 32.642396683962005),
    Veteriner(
        ad: "Balgat Veteriner Kliniği",
        latitude: 39.897981,
        longitude: 32.818801),
    Veteriner(
        ad: "Dışkapı Veteriner Merkezi Kliniği",
        latitude: 39.956733,
        longitude: 32.863493),
    Veteriner(
        ad: "ATAKULE VETERİNER POLİKLİNİĞİ",
        latitude: 39.87812542489598,
        longitude: 32.86524299856006),
    Veteriner(
        ad: "Mor Pati Veteriner Kliniği",
        latitude: 39.87450151327733,
        longitude: 32.68925108160646),
    Veteriner(
        ad: "Başkent Hayvan Hastanesi ",
        latitude: 39.89511415623712,
        longitude: 32.85008802578526),
  ];
  Set<Marker> _markerler = {};

  @override
  void initState() {
    super.initState();
    _konumuDinle();
  }

  Future<void> _konumuDinle() async {
    var location = Location();
    var izin = await location.requestPermission();
    if (izin == PermissionStatus.granted) {
      location.onLocationChanged.listen((LocationData konum) {
        setState(() {
          _konum = konum;
          _haritayiGuncelle();
        });
      });
    }
  }

  void _haritayiGuncelle() async {
    CameraPosition konum = CameraPosition(
      target: LatLng(_konum.latitude!, _konum.longitude!),
      zoom: 14,
    );
    setState(() {
      _markerler.clear();
      _markerler.add(
        Marker(
          markerId: MarkerId("KullaniciKonumu"),
          position: LatLng(_konum.latitude!, _konum.longitude!),
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(title: "Buradasınız"),
        ),
      );

      _veterinerler.forEach((veteriner) {
        double mesafe = _hesaplaMesafe(
          _konum.latitude!,
          _konum.longitude!,
          veteriner.latitude,
          veteriner.longitude,
        );

        if (mesafe <= 5000) {
          _markerler.add(
            Marker(
              markerId: MarkerId(veteriner.ad),
              position: LatLng(veteriner.latitude, veteriner.longitude),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueBlue),
              infoWindow: InfoWindow(
                  title: veteriner.ad, snippet: 'Mesafe: $mesafe metre'),
            ),
          );
        }
      });
    });

    GoogleMapController controller = await _haritaController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(konum));
  }

  double _hesaplaMesafe(double lat1, double lon1, double lat2, double lon2) {
    var R = 6371.0;
    var dLat = _dereceToRadyan(lat2 - lat1);
    var dLon = _dereceToRadyan(lon2 - lon1);
    var a = math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(_dereceToRadyan(lat1)) *
            math.cos(_dereceToRadyan(lat2)) *
            math.sin(dLon / 2) *
            math.sin(dLon / 2);
    var c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    var mesafe = R * c * 1000;

    return mesafe;
  }

  double _dereceToRadyan(double derece) {
    return derece * (math.pi / 180);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text("En Yakın Veterinerler"),
        leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // Navigate to the Home screen when the home icon is clicked
              Navigator.of(context).pop();
            } // BURAYA ANA MENUYE GIDEN YONLENDIRMEYI YAPPPPPPPPPPP
            ),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        markers: _markerler,
        initialCameraPosition: CameraPosition(
          target: LatLng(39.92084200913324, 32.854139200536935),
          zoom: 10,
        ),
        onMapCreated: (GoogleMapController controller) {
          _haritaController.complete(controller);
        },
      ),
    );
  }
}
