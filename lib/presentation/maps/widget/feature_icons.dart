
import 'package:flutter/material.dart';
import 'package:rental_car/utils/constants/colors.dart';
import 'package:rental_car/utils/constants/sizes.dart';

Widget featureIcons(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      featureIcon(Icons.local_gas_station, 'Diesel', 'Common Rail'),
      featureIcon(Icons.speed, 'Asseleration', '0 - 100km/s'),
      featureIcon(Icons.ac_unit, 'Cold', 'Temp Control'),
      ],
    ),
  );
}

Widget featureIcon( IconData icon,  String title,String subtitle) {
  return Container(
    width: 115,
    height: 100,
    padding: const EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.grey, width: 1)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: TSizes.iconLg,),
        Text(title, style: const TextStyle(
          fontSize: TSizes.fontSizeSm,
          fontWeight: FontWeight.w700

        ),),
        Text(subtitle, style:  const TextStyle(color: TColors.darkerGrey, fontSize: TSizes.iconXs),),
      ],
    ),
  );
}


