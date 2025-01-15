import 'package:flutter/material.dart';
import 'package:rental_car/utils/constants/colors.dart';
import 'package:rental_car/utils/constants/sizes.dart';

Widget carDetailsCard() {
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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: TSizes.dividerHeightMl,
              ),
              Text(
                'car.model',
                style: TextStyle(
                  fontSize: TSizes.fontSizeXl,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: TSizes.dividerHeightSl,
              ),
              Row(
                children: [
                  Icon(
                    Icons.directions_car,
                    color: TColors.white,
                    size: TSizes.iconSm,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "> car.distance km",
                    style: TextStyle(
                      color: TColors.white,
                      fontSize: TSizes.fontSizeSm,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.battery_full,
                    color: TColors.white,
                    size: TSizes.iconSm,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "car.fuelCapacity",
                    style: TextStyle(
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
          bottom: 0,
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
                const SizedBox(
                  height: TSizes.md,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '\$ car.pricePerHour',
                      style: TextStyle(
                        fontSize: TSizes.fontSizeMd,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: TColors.primary,
                        ),
                        child: const Text(
                          "Book Now",
                          style: TextStyle(
                            color: Colors.white,
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
      ],
    ),
  );
}
