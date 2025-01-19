
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rental_car/data/model/car_model.dart';


class FetchCarsApiDataSource {
  final FirebaseFirestore firestore;

  FetchCarsApiDataSource({required this.firestore});


  Future<List<CarModel>> getCar() async {
    var snapshot =
    await firestore.collection('cars').get();

    return snapshot.docs.map((doc) => CarModel.fromMap(doc.data()) ).toList();

  }


}