import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rental_car/presentation/cars/ui/car_details_screen.dart';
import 'package:rental_car/utils/constants/sizes.dart';

import '../../../data/model/car_model.dart';


class CarCard extends StatelessWidget {
  final CarModel car;

  const CarCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Bounce(
      onTap: () => Get.to( CarDetailsScreen(car: car,)),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: [
            Image.network(
              car.image,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.image, size: 100);
              },
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
                        const SizedBox(
                          width: 4,
                        ),
                        Text("${car.distance.toStringAsFixed(0)}km")
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/car_fuelCapacity.svg",
                          height: 24,
                          width: 24,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text("${car.fuelCapacity.toStringAsFixed(0)}L")
                      ],
                    ),
                  ],
                ),
                Text(
                  "\$${car.pricePerHour.toStringAsFixed(2)}/h",
                  style: const TextStyle(
                    fontSize: TSizes.fontSizeMd,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
