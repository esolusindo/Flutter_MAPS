import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const MyMaps());
}

class MyMaps extends StatelessWidget {
  const MyMaps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Belajar Maps",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AppMaps(),
    );
  }
}


class AppMaps extends StatefulWidget {
  const AppMaps({Key? key}) : super(key: key);

  @override
  _AppMapsState createState() => _AppMapsState();
}

class _AppMapsState extends State<AppMaps> {

  static const _initialCameraPosition = CameraPosition(
      target: LatLng(-8.1871113, 113.6985388),
      zoom: 20.0
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text("Belajar Flutter"),
      ),
      body: GoogleMap(
        myLocationButtonEnabled: true,
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        initialCameraPosition: _initialCameraPosition,
      ),
    );
  }
}
