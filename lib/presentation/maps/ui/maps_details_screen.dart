import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../data/model/car_model.dart';
import '../../../utils/constants/sizes.dart';
import '../widget/car_details_map_card.dart';

class MapsDetailsScreen extends StatelessWidget {

  final CarModel car;

  const MapsDetailsScreen({super.key, required this.car});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Bounce(
          onTap: ()=> Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
            size: TSizes.iconMd,
          ),
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
                urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: const ['a', 'b', 'c'],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: carDetailsMapCard(car: car ),
          ),
        ],
      ),
    );
  }
}
