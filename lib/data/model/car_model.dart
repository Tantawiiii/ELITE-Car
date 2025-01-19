class CarModel {
  final String model;
  final String image;

  final double distance;
  final double fuelCapacity;
  final double pricePerHour;

  CarModel(
      {required this.image,
      required this.model,
      required this.distance,
      required this.fuelCapacity,
      required this.pricePerHour});

  factory CarModel.fromMap(Map<String, dynamic> map) {
    return CarModel(
        image: map["image"],
        model: map["model"],
        distance: map["distance"],
        fuelCapacity: map["fuelCapacity"],
        pricePerHour: map["pricePerHour"]);
  }
}
