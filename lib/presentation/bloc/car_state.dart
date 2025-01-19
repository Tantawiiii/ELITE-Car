
import '../../data/model/car_model.dart';

abstract class CarState {}

class CarLoading extends CarState {}

class CarLoaded extends CarState {
  final List<CarModel> cars;
  CarLoaded(this.cars);
}

class CarError extends CarState {
  final String error;

  CarError(this.error);
}

