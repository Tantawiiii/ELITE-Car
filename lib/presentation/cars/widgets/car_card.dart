import 'package:flutter/material.dart';
import 'package:rental_car/presentation/cars/model/car_model.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarCard extends StatelessWidget {
  final CarModel car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Image.asset(
            car.image,
            height: 180,
          ),
          Text(
            car.model,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/car_distance.svg",
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(width: 4,),
                      Text("${car.distance.toStringAsFixed(0)}km")
                    ],
                  ),
                  const SizedBox(width: 16,),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/car_fuelCapacity.svg",
                        height: 24,
                        width: 24,
                      ),
                      const SizedBox(width: 4,),
                      Text("${car.fuelCapacity.toStringAsFixed(0)}L")
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
