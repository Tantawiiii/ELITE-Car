
import 'package:flutter/material.dart';
import 'package:rental_car/presentation/cars/widgets/car_card.dart';

import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../model/car_model.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            SizedBox(width: TSizes.xs,),
            Text(TTexts.appBarTitleCarList)
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(car:  CarModel(
              image: "assets/CAR1.png",
              model: "Fortuner GR",
              distance: 860,
              fuelCapacity: 50,
              pricePerHour: 178),)
        ],
      ),
    );
  }
}
