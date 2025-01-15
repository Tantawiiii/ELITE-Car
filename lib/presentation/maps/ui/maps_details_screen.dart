import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../utils/constants/sizes.dart';
import '../widget/car_details_card.dart';

class MapsDetailsScreen extends StatelessWidget {
  const MapsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back_ios_new_sharp,
          size: TSizes.iconLg,
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(30.052328, 31.341953),
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: const ['a', 'b', 'c'],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: carDetailsCard(),
          ),
        ],
      ),
    );
  }
}
