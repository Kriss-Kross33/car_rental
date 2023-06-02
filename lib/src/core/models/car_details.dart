import 'package:equatable/equatable.dart';

class CarDetailsModel extends Equatable {
  final String imagePath;
  final String name;
  final CarSpecs specs;

  const CarDetailsModel(
      {required this.imagePath, required this.name, required this.specs});
  @override
  List<Object?> get props => [];
}

class CarSpecs extends Equatable {
  final String engine;
  final int year;
  final int doors;
  final DriveType driveType;
  final FuelType fuelType;
  final int power;
  final GearBox gearBox;
  final String acceleration;

  const CarSpecs({
    required this.engine,
    required this.year,
    required this.doors,
    required this.driveType,
    required this.fuelType,
    required this.power,
    required this.gearBox,
    required this.acceleration,
  });
  @override
  List<Object?> get props => [];
}

enum GearBox {
  Manual,
  Automatic,
}

enum DriveType {
  RWD,
  LWD,
}

enum FuelType {
  Gasoline,
  Diesel,
}
