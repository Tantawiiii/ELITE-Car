

import 'package:rental_car/data/model/car_model.dart';
import 'package:rental_car/domain/repositories/car_repository.dart';

import '../datasourses/fetch_cars_api.dart';

class CarRepositoryImpl implements CarRepository {

 final FetchCarsApiDataSource  dataSource;

  CarRepositoryImpl(this.dataSource);


  @override
  Future<List<CarModel>> fetchCars() {
    return dataSource.getCar();
  }

}