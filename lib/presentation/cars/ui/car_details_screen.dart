import 'package:flutter/material.dart';
import 'package:rental_car/presentation/cars/widgets/car_card.dart';
import 'package:rental_car/presentation/cars/widgets/more_card.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../model/car_model.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key, required this.car});

  final CarModel car;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            SizedBox(
              width: TSizes.xs,
            ),
            Text(TTexts.appBarTitleCarList)
          ],
        ),
      ),
      body: ListView(
        children: [
          CarCard(
            car: CarModel(
                image: car.image,
                model: car.model,
                distance: car.distance,
                fuelCapacity: car.fuelCapacity,
                pricePerHour: car.pricePerHour),
          ),
          const SizedBox(
            height: TSizes.md,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: TSizes.spaceBtwItems,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: TSizes.productItemHeight,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: TColors.primaryBackground,
                      borderRadius: BorderRadius.circular(TSizes.iconSm),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: TSizes.borderRadiusSm,
                          spreadRadius: TSizes.borderRadiusSm,
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: TSizes.xxl,
                          backgroundImage: AssetImage("assets/avater.png"),
                        ),
                        SizedBox(
                          height: TSizes.sm,
                        ),
                        Text(
                          "Tantawiii ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$4.253",
                          style: TextStyle(
                            color: TColors.textSecondary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Expanded(
                  child: Container(
                    height: TSizes.productItemHeight,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(TSizes.iconSm),
                      image: const DecorationImage(
                        image: AssetImage("assets/city_maps.jpg"),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: TSizes.borderRadiusSm,
                          spreadRadius: TSizes.borderRadiusSm,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: TSizes.spaceBtwItems,
              vertical: TSizes.spaceBtwItems,
            ),
            child: Column(
              children: [
                MoreCard(
                  car: CarModel(
                      image: car.image,
                      model: car.model + " -1",
                      distance: car.distance+ 100,
                      fuelCapacity: car.fuelCapacity  + 100,
                      pricePerHour: car.pricePerHour),
                ),
                Divider(),
                MoreCard(
                  car: CarModel(
                      image: car.image,
                      model: car.model + " -2",
                      distance: car.distance + 200,
                      fuelCapacity: car.fuelCapacity  + 200,
                      pricePerHour: car.pricePerHour),
                ),
                Divider(),
                MoreCard(
                  car: CarModel(
                      image: car.image,
                      model: car.model + " -3",
                      distance: car.distance + 300,
                      fuelCapacity: car.fuelCapacity  + 300,
                      pricePerHour: car.pricePerHour),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
