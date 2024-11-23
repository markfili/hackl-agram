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
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showFilterScreen(context),
        child: const Icon(Icons.filter_list),
      ),
    );
  }
}
