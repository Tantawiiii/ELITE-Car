
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:rental_car/data/repositories/car_repository_impl.dart';
import 'package:rental_car/domain/repositories/car_repository.dart';
import 'package:rental_car/domain/usecases/get_allcars_case.dart';
import 'package:rental_car/presentation/bloc/car_bloc.dart';

import '../data/datasourses/fetch_cars_api.dart';

GetIt getIt = GetIt.instance;

void initInjection (){
  try{
    getIt.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
    getIt.registerLazySingleton<FetchCarsApiDataSource>(
            () => FetchCarsApiDataSource(firestore: getIt<FirebaseFirestore>()));

    getIt.registerLazySingleton<CarRepository>(
            () => CarRepositoryImpl( getIt<FetchCarsApiDataSource>()));

    getIt.registerLazySingleton<GetAllCarsCase>(
            () => GetAllCarsCase( getIt<CarRepository>()));

    getIt.registerLazySingleton(() => CarBloc( getAllCarsCase:  getIt<GetAllCarsCase>()));
  } catch (e) {
    rethrow;
  }
}