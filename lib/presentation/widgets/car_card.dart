import 'package:flutter/material.dart';
import 'package:rental_car/data/model/car_model.dart';

class CarCard extends StatelessWidget {
  final Car car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Image.asset(
            "",
            height: 120,
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
                      Image.asset("gps"),
                      Text("${car.distance.toStringAsFixed(0)}km")
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset("gps"),
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
