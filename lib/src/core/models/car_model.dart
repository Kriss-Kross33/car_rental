import 'package:car_rental/src/core/core.dart';
import 'package:equatable/equatable.dart';

class CarModel extends Equatable {
  final String imagePath;
  final String name;
  final CarDetailsModel details;

  const CarModel({
    required this.imagePath,
    required this.name,
    required this.details,
  });

  @override
  List<Object> get props => [imagePath, name, details];
}

List<CarModel> carModels = <CarModel>[
  const CarModel(
    imagePath: AssetConsts.rolls_royce,
    name: CarConst.rolls_royce,
    details: CarDetailsModel(
      imagePath: AssetConsts.benz_2,
      name: CarConst.benz_2,
      specs: CarSpecs(
        engine: '4200 cm3',
        year: 2015,
        doors: 2,
        driveType: DriveType.RWD,
        fuelType: FuelType.Gasoline,
        power: 395,
        gearBox: GearBox.Manual,
        acceleration: '3,7s',
      ),
    ),
  ),
  const CarModel(
    imagePath: AssetConsts.benz_gt_s,
    name: CarConst.benz_gt_s,
    details: CarDetailsModel(
      imagePath: AssetConsts.benz_2,
      name: CarConst.benz_2,
      specs: CarSpecs(
        engine: '4200 cm3',
        year: 2015,
        doors: 2,
        driveType: DriveType.RWD,
        fuelType: FuelType.Gasoline,
        power: 395,
        gearBox: GearBox.Manual,
        acceleration: '3,7s',
      ),
    ),
  ),
  const CarModel(
    imagePath: AssetConsts.bmw_i8,
    name: CarConst.bmw_i8,
    details: CarDetailsModel(
      imagePath: AssetConsts.benz_2,
      name: CarConst.benz_2,
      specs: CarSpecs(
        engine: '4200 cm3',
        year: 2015,
        doors: 2,
        driveType: DriveType.RWD,
        fuelType: FuelType.Gasoline,
        power: 395,
        gearBox: GearBox.Manual,
        acceleration: '3,7s',
      ),
    ),
  ),
  const CarModel(
    imagePath: AssetConsts.audi_carros,
    name: CarConst.audi_carros,
    details: CarDetailsModel(
      imagePath: AssetConsts.benz_2,
      name: CarConst.benz_2,
      specs: CarSpecs(
        engine: '4200 cm3',
        year: 2015,
        doors: 2,
        driveType: DriveType.RWD,
        fuelType: FuelType.Gasoline,
        power: 395,
        gearBox: GearBox.Manual,
        acceleration: '3,7s',
      ),
    ),
  ),
  const CarModel(
    imagePath: AssetConsts.audi_r8_spyder,
    name: CarConst.audi_r8_spyder,
    details: CarDetailsModel(
      imagePath: AssetConsts.benz_2,
      name: CarConst.benz_2,
      specs: CarSpecs(
        engine: '4200 cm3',
        year: 2015,
        doors: 2,
        driveType: DriveType.RWD,
        fuelType: FuelType.Gasoline,
        power: 395,
        gearBox: GearBox.Manual,
        acceleration: '3,7s',
      ),
    ),
  ),
  const CarModel(
    imagePath: AssetConsts.bmw_x2,
    name: CarConst.bmw_x2,
    details: CarDetailsModel(
      imagePath: AssetConsts.benz_2,
      name: CarConst.benz_2,
      specs: CarSpecs(
        engine: '4200 cm3',
        year: 2015,
        doors: 2,
        driveType: DriveType.RWD,
        fuelType: FuelType.Gasoline,
        power: 395,
        gearBox: GearBox.Manual,
        acceleration: '3,7s',
      ),
    ),
  ),
  const CarModel(
    imagePath: AssetConsts.rolls_royce_ghost,
    name: CarConst.rolls_royce_ghost,
    details: CarDetailsModel(
      imagePath: AssetConsts.benz_2,
      name: CarConst.benz_2,
      specs: CarSpecs(
        engine: '4200 cm3',
        year: 2015,
        doors: 2,
        driveType: DriveType.RWD,
        fuelType: FuelType.Gasoline,
        power: 395,
        gearBox: GearBox.Manual,
        acceleration: '3,7s',
      ),
    ),
  ),
  const CarModel(
    imagePath: AssetConsts.range_rover,
    name: CarConst.range_rover,
    details: CarDetailsModel(
      imagePath: AssetConsts.benz_2,
      name: CarConst.benz_2,
      specs: CarSpecs(
        engine: '4200 cm3',
        year: 2015,
        doors: 2,
        driveType: DriveType.RWD,
        fuelType: FuelType.Gasoline,
        power: 395,
        gearBox: GearBox.Manual,
        acceleration: '3,7s',
      ),
    ),
  ),
];
