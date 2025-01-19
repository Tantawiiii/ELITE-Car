
import 'package:rental_car/data/model/car_model.dart';

abstract class CarRepository{
  Future <List<CarModel>> fetchCars();
}