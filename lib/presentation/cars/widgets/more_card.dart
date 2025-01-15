import 'package:flutter/material.dart';
import 'package:rental_car/presentation/cars/model/car_model.dart';
import 'package:rental_car/utils/constants/colors.dart';
import 'package:rental_car/utils/constants/sizes.dart';

class MoreCard extends StatelessWidget {
  final CarModel car;

  const MoreCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff212020),
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.model,
                style: const TextStyle(
                  color: TColors.white,
                  fontSize: TSizes.fontSizeMd,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.directions_car,
                    color: TColors.white,
                    size: TSizes.iconMd,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "> ${car.distance} km",
                    style: const TextStyle(
                      color: TColors.white,fontSize: TSizes.fontSizeSm,
                    ),
                  ),
                  SizedBox(width: 10,),
                  const Icon(
                    Icons.battery_full,
                    color: TColors.white,
                    size: TSizes.iconMd,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    car.fuelCapacity.toString(),
                    style: const TextStyle(
                      color: TColors.white,fontSize: TSizes.fontSizeSm,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Icon(Icons.arrow_forward_ios, color: TColors.white, size: TSizes.iconMd,)
        ],
      ),
    );
  }
}
