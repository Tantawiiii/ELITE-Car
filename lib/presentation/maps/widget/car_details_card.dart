import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:rental_car/utils/constants/colors.dart';
import 'package:rental_car/utils/constants/sizes.dart';

import '../../cars/model/car_model.dart';
import 'feature_icons.dart';

Widget carDetailsCard({required CarModel car}) {
  return SizedBox(
    height: TSizes.imageCarouselHeightLg,
    child: Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(TSizes.lg),
              topRight: Radius.circular(TSizes.lg),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                spreadRadius: 0,
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.model,
                style: const TextStyle(
                  fontSize: TSizes.fontSizeXl,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: TSizes.borderRadiusSm,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.directions_car,
                    color: TColors.white,
                    size: TSizes.iconSm,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "> ${car.distance} km",
                    style: const TextStyle(
                      color: TColors.white,
                      fontSize: TSizes.fontSizeSm,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.battery_full,
                    color: TColors.white,
                    size: TSizes.iconSm,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    car.fuelCapacity.toString(),
                    style: const TextStyle(
                      color: TColors.white,
                      fontSize: TSizes.fontSizeSm,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -8,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: TColors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(TSizes.lg),
                topLeft: Radius.circular(TSizes.lg),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Features",
                  style: TextStyle(
                    fontSize: TSizes.fontSizeMd,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                featureIcons(),
                const SizedBox(
                  height: TSizes.md,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${car.pricePerHour}/day',
                      style: const TextStyle(
                        fontSize: TSizes.fontSizeMd,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: TColors.primary,
                          borderRadius: BorderRadius.circular(16)),
                      child: Bounce(
                        onTap: () {},
                        child: const Center(
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -18,
          right: -20,
          child: Image.asset(car.image, height: 180,),
        ),
      ],
    ),
  );
}
