
import 'package:rental_car/data/model/car_model.dart';
import 'package:rental_car/domain/repositories/car_repository.dart';

class GetAllCarsCase {

  final CarRepository repository;

  GetAllCarsCase(this.repository);

  Future <List<CarModel>> callAllCars() async {
   return await repository.fetchCars();
  }



}