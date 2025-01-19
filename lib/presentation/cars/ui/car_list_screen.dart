import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_car/presentation/bloc/car_bloc.dart';
import 'package:rental_car/presentation/bloc/car_state.dart';
import 'package:rental_car/presentation/cars/widgets/car_card.dart';
import 'package:rental_car/utils/constants/text_strings.dart';

import '../../../data/model/car_model.dart';

class CarListScreen extends StatelessWidget {
  final List<CarModel> cars = [
    CarModel(
        image: "assets/CAR1.png",
        model: "Fortuner Purple",
        distance: 860,
        fuelCapacity: 50,
        pricePerHour: 178),
    CarModel(
        image: "assets/CAR2.png",
        model: "Fortuner Black",
        distance: 860,
        fuelCapacity: 50,
        pricePerHour: 178),
    CarModel(
        image: "assets/CAR3.png",
        model: "Fortuner Plue",
        distance: 860,
        fuelCapacity: 50,
        pricePerHour: 178),
    CarModel(
        image: "assets/CAR4.png",
        model: "Fortuner Red",
        distance: 860,
        fuelCapacity: 50,
        pricePerHour: 178),
    CarModel(
        image: "assets/CAR2.png",
        model: "Fortuner Black",
        distance: 860,
        fuelCapacity: 50,
        pricePerHour: 178),
    CarModel(
        image: "assets/CAR3.png",
        model: "Fortuner Plue",
        distance: 860,
        fuelCapacity: 50,
        pricePerHour: 178),
    CarModel(
        image: "assets/CAR4.png",
        model: "Fortuner Red",
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
      // body: ListView.builder(
      //     itemCount: cars.length,
      //     itemBuilder: (context, index) {
      //   return CarCard(car: cars[index]);
      // }),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state) {
          if (state is CarLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CarLoaded) {
            return ListView.builder(
                itemCount: state.cars.length,
                itemBuilder: (context, index) {
                  return CarCard(car: state.cars[index]);
                });
          } else if (state is CarError) {
            return Center(
              child: Text("error: ${state.error}"),
            );
          }
          return Container();
        },
      ),
    );
  }
}
