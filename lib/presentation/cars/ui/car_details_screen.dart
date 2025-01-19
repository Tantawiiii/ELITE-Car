import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rental_car/presentation/cars/widgets/car_card.dart';
import 'package:rental_car/presentation/cars/widgets/more_card.dart';
import 'package:rental_car/presentation/maps/ui/maps_details_screen.dart';

import '../../../data/model/car_model.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({super.key, required this.car});

  final CarModel car;

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animController;
  Animation<double>? _animation;

  @override
  void initState() {
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _animation = Tween(begin: 1.0, end: 2.0).animate(_animController!)
      ..addListener(() {
        setState(() {});
      });
    _animController!.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animController!.forward();
    super.dispose();
  }

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
                image: widget.car.image,
                model: widget.car.model,
                distance: widget.car.distance,
                fuelCapacity: widget.car.fuelCapacity,
                pricePerHour: widget.car.pricePerHour),
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
                  child: Bounce(
                    onTap: () => Get.to(MapsDetailsScreen(
                      car: widget.car,
                    )),
                    child: Container(
                      height: TSizes.productItemHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(TSizes.iconSm),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: TSizes.borderRadiusSm,
                            spreadRadius: TSizes.borderRadiusSm,
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(TSizes.iconSm),
                        child: Transform.scale(
                          scale: _animation!.value,
                          alignment: Alignment.center,
                          child: Image.asset("assets/city_maps.jpg",fit: BoxFit.cover, ),
                        ),
                      ) ,
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
                      image: widget.car.image,
                      model: "${widget.car.model} -1",
                      distance: widget.car.distance + 100,
                      fuelCapacity: widget.car.fuelCapacity + 100,
                      pricePerHour: widget.car.pricePerHour),
                ),
                const Divider(),
                MoreCard(
                  car: CarModel(
                      image: widget.car.image,
                      model: "${widget.car.model} -2",
                      distance: widget.car.distance + 200,
                      fuelCapacity: widget.car.fuelCapacity + 200,
                      pricePerHour: widget.car.pricePerHour),
                ),
                const Divider(),
                MoreCard(
                  car: CarModel(
                      image: widget.car.image,
                      model: "${widget.car.model} -3",
                      distance: widget.car.distance + 300,
                      fuelCapacity: widget.car.fuelCapacity + 300,
                      pricePerHour: widget.car.pricePerHour),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
