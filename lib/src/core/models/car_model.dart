import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:equatable/equatable.dart';

class CarModel extends Equatable {
  final String imagePath;
  final String name;

  CarModel({required this.imagePath, required this.name});

  @override
  List<Object> get props => [];
}

List<CarModel> carModels = <CarModel>[
  CarModel(imagePath: AssetConsts.benz_gt_s, name: 'Benz GT S'),
  CarModel(imagePath: AssetConsts.bmw_i8, name: 'BMW I8'),
  CarModel(imagePath: AssetConsts.audi_carros, name: 'Audi Carros'),
  CarModel(imagePath: AssetConsts.audi_r8_spyder, name: 'Audi R8 Spyder'),
  CarModel(imagePath: AssetConsts.bmw_x2, name: 'BMW X2 SUV'),
  CarModel(imagePath: AssetConsts.rolls_royce, name: 'Rolls Royce'),
  CarModel(imagePath: AssetConsts.rolls_royce_ghost, name: 'Rolls Royce Ghost'),
  CarModel(imagePath: AssetConsts.range_rover, name: 'Rolls Royce Ghost'),
];
