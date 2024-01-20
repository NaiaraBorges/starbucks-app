import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DeliveryTab extends StatefulWidget {
  const DeliveryTab({super.key});

  @override
  State<DeliveryTab> createState() => _DeliveryTabState();
}

class _DeliveryTabState extends State<DeliveryTab> {
  static const LatLng _kMapCenter =
      LatLng(19.018255973653343, 72.84793849278007);

  static const CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            child: GoogleMap(
              initialCameraPosition: _kInitialPosition,
            ),
          ),
          Container(
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.png"),
                  fit: BoxFit.cover,
                ),
                color: Colors.transparent,
                borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 98, 59, 10),
            ),
          ),
        ],
      ),
    );
  }
}
