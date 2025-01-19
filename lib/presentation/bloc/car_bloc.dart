

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rental_car/domain/usecases/get_allcars_case.dart';
import 'package:rental_car/presentation/bloc/car_event.dart';
import 'package:rental_car/presentation/bloc/car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {

  final GetAllCarsCase getAllCarsCase;

  CarBloc({required this.getAllCarsCase}) : super(CarLoading()){
   on<LoadCars>((event, emit) async {
     emit(CarLoading());

     try {
       final cars = await getAllCarsCase.callAllCars();
       emit(CarLoaded(cars));
     } catch (e) {
       emit(CarError(e.toString()));
     }

   });
  }


}
