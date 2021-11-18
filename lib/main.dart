import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late GoogleMapController mapController;
  final Set<Marker> markers = new Set();
  static const LatLng showLocation = const LatLng(13.697497, -89.224959);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MovilSV"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: GoogleMap(
        zoomGesturesEnabled: true,
        initialCameraPosition: CameraPosition(
          target: showLocation,
          zoom: 15.0,
        ),
        markers: getmarkers(),
        mapType: MapType.normal,
        onMapCreated: (controller) {
          setState(() {
            mapController = controller;
          });
        },
      ),
    );
  }

  Set<Marker> getmarkers() {
    setState(() {
      markers.add(Marker(
        //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: showLocation,
        infoWindow: InfoWindow(
          //popup info
          title: 'San Salvador',
          snippet: 'San Salvador',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));

      markers.add(Marker(
        //add second marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(13.700016, -89.200927),
        infoWindow: InfoWindow(
          //popup info
          title: 'Arce',
          snippet: 'San Salvador',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));

      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(13.701295, -89.224353),
        infoWindow: InfoWindow(
          //popup info
          title: 'Salvador del Mundo',
          snippet: 'San Salvador',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));

      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(13.697909, -89.144919),
        infoWindow: InfoWindow(
          //popup info
          title: 'Centro de Soyapango',
          snippet: 'Soyapango',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));

      markers.add(Marker(
        //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(13.687807, -89.190182),
        infoWindow: InfoWindow(
          //popup info
          title: 'San Jacinto',
          snippet: 'San Jacinto',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });

    return markers;
  }
}
