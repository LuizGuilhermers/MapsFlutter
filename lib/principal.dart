import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);


  @override
  _PrincipalState createState() => _PrincipalState();

}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FLUTTER COM MAPS'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ), // AppBar
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(37.7749, -122.4194), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/cycle/{z}/{x}/{y}.png?apikey=333762c2807f4c758ea41140ce36e08e',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(38.728663, -9.217910),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.black87),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(41.857132, 12.465475),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.black87),
                    ),
                  ),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(51.567202, -0.162048),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.black87),
                    ),
                  ),


                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}
