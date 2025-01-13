import 'package:flutter/material.dart';
import 'package:rental_car/presentation/cars/model/car_model.dart';
import 'package:rental_car/presentation/cars/widgets/car_card.dart';
import 'package:rental_car/utils/constants/text_strings.dart';


class CarListScreen extends StatelessWidget {

  final List<CarModel> cars = [
    CarModel(
        image: "assets/CAR1.png",
        model: "Fortuner GR",
        distance: 860,
        fuelCapacity: 50,
        pricePerHour: 178),
    CarModel(
        image: "assets/CAR2.png",
        model: "Fortuner GR",
        distance: 860,
        fuelCapacity: 50,
        pricePerHour: 178),
    CarModel(
        image: "assets/CAR3.png",
        model: "Fortuner GR",
        distance: 860,
        fuelCapacity: 50,
        pricePerHour: 178),
    CarModel(
        image: "assets/CAR4.png",
        model: "Fortuner GR",
        distance: 860,
        fuelCapacity: 50,
        pricePerHour: 178),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TTexts.appBarTitleCarList),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: cars.length,
          itemBuilder: (context, index) {
        return CarCard(car: cars[index]);
      }),
    );
  }
}
