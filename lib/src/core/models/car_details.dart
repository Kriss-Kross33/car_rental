import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/constants/car_const.dart';
import 'package:equatable/equatable.dart';

class CarDetailsModel extends Equatable {
  final String imagePath;
  final String name;
  final CarSpecs specs;

  CarDetailsModel(
      {required this.imagePath, required this.name, required this.specs});
  @override
  List<Object?> get props => [];
}

class CarSpecs extends Equatable {
  final int engine;
  final int year;
  final int doors;
  final DriveType driveType;
  final FuelType fuelType;
  final int power;
  final GearBox gearBox;
  final String acceleration;

  CarSpecs({
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

final List<CarDetailsModel> carDetails = <CarDetailsModel>[
  CarDetailsModel(
    imagePath: AssetConsts.benz_2,
    name: CarConst.benz_2,
    specs: CarSpecs(
      engine: 4200,
      year: 2015,
      doors: 2,
      driveType: DriveType.RWD,
      fuelType: FuelType.Gasoline,
      power: 395,
      gearBox: GearBox.Manual,
      acceleration: '3,7s',
    ),
  ),
  CarDetailsModel(
    imagePath: AssetConsts.audi_r8_spyder,
    name: CarConst.benz_gt_s,
    specs: CarSpecs(
      engine: 4200,
      year: 2015,
      doors: 2,
      driveType: DriveType.RWD,
      fuelType: FuelType.Gasoline,
      power: 395,
      gearBox: GearBox.Manual,
      acceleration: '3,7s',
    ),
  ),
  CarDetailsModel(
    imagePath: AssetConsts.benz_2,
    name: CarConst.benz_gt_s,
    specs: CarSpecs(
      engine: 4200,
      year: 2015,
      doors: 2,
      driveType: DriveType.RWD,
      fuelType: FuelType.Gasoline,
      power: 395,
      gearBox: GearBox.Manual,
      acceleration: '3,7s',
    ),
  ),
  CarDetailsModel(
    imagePath: AssetConsts.benz_gt_s,
    name: CarConst.benz_gt_s,
    specs: CarSpecs(
      engine: 4200,
      year: 2015,
      doors: 2,
      driveType: DriveType.RWD,
      fuelType: FuelType.Gasoline,
      power: 395,
      gearBox: GearBox.Manual,
      acceleration: '3,7s',
    ),
  ),
  CarDetailsModel(
    imagePath: AssetConsts.benz_gt_s,
    name: CarConst.benz_gt_s,
    specs: CarSpecs(
      engine: 4200,
      year: 2015,
      doors: 2,
      driveType: DriveType.RWD,
      fuelType: FuelType.Gasoline,
      power: 395,
      gearBox: GearBox.Manual,
      acceleration: '3,7s',
    ),
  ),
  CarDetailsModel(
    imagePath: AssetConsts.benz_gt_s,
    name: CarConst.benz_gt_s,
    specs: CarSpecs(
      engine: 4200,
      year: 2015,
      doors: 2,
      driveType: DriveType.RWD,
      fuelType: FuelType.Gasoline,
      power: 395,
      gearBox: GearBox.Manual,
      acceleration: '3,7s',
    ),
  ),
  CarDetailsModel(
    imagePath: AssetConsts.benz_gt_s,
    name: CarConst.benz_gt_s,
    specs: CarSpecs(
      engine: 4200,
      year: 2015,
      doors: 2,
      driveType: DriveType.RWD,
      fuelType: FuelType.Gasoline,
      power: 395,
      gearBox: GearBox.Manual,
      acceleration: '3,7s',
    ),
  ),
];
