import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hackl/screens/filter_screen.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lokacije događanja"),
      ),
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(
            45.8144,
            15.9780,
          ),
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          const MarkerLayer(
            markers: [
              Marker(
                point: LatLng(45.81179428100586, 15.969405174255371),
                child: Icon(
                  Icons.theater_comedy,
                  size: 40,
                ),
              ),
              Marker(
                point: LatLng(45.80135726928711, 15.97854232788086),
                child: Icon(
                  Icons.theater_comedy,
                  size: 40,
                ),
              ),
              Marker(
                point: LatLng(45.8150278, 15.9746427),
                child: Icon(
                  Icons.theater_comedy,
                  size: 40,
                ),
              ),
              Marker(
                point: LatLng(45.7946446, 15.943727),
                child: Icon(
                  Icons.theater_comedy,
                  size: 40,
                ),
              ),
              Marker(
                point: LatLng(45.76786804199219, 15.946802139282227),
                child: Icon(
                  Icons.theater_comedy,
                  size: 40,
                ),
              ),
              Marker(
                point: LatLng(45.805843, 15.9776533),
                child: Icon(
                  Icons.theater_comedy,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showFilterScreen(context),
        child: const Icon(Icons.filter_list),
      ),
    );
  }
}
