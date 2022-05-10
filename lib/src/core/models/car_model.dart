import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/constants/car_const.dart';
import 'package:equatable/equatable.dart';

class CarModel extends Equatable {
  final String imagePath;
  final String name;

  CarModel({required this.imagePath, required this.name});

  @override
  List<Object> get props => [];
}

List<CarModel> carModels = <CarModel>[
  CarModel(imagePath: AssetConsts.benz_gt_s, name: CarConst.benz_gt_s),
  CarModel(imagePath: AssetConsts.bmw_i8, name: CarConst.bmw_i8),
  CarModel(imagePath: AssetConsts.audi_carros, name: CarConst.audi_carros),
  CarModel(
      imagePath: AssetConsts.audi_r8_spyder, name: CarConst.audi_r8_spyder),
  CarModel(imagePath: AssetConsts.bmw_x2, name: CarConst.bmw_x2),
  CarModel(imagePath: AssetConsts.rolls_royce, name: CarConst.rolls_royce),
  CarModel(
      imagePath: AssetConsts.rolls_royce_ghost,
      name: CarConst.rolls_royce_ghost),
  CarModel(imagePath: AssetConsts.range_rover, name: CarConst.range_rover),
];
