import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/constants/car_const.dart';
import 'package:equatable/equatable.dart';

class CarModel extends Equatable {
  final String imagePath;
  final String name;

  const CarModel({required this.imagePath, required this.name});

  @override
  List<Object> get props => [];
}

List<CarModel> carModels = <CarModel>[
  const CarModel(
      imagePath: AssetConsts.rolls_royce, name: CarConst.rolls_royce),
  const CarModel(imagePath: AssetConsts.benz_gt_s, name: CarConst.benz_gt_s),
  const CarModel(imagePath: AssetConsts.bmw_i8, name: CarConst.bmw_i8),
  const CarModel(
      imagePath: AssetConsts.audi_carros, name: CarConst.audi_carros),
  const CarModel(
      imagePath: AssetConsts.audi_r8_spyder, name: CarConst.audi_r8_spyder),
  const CarModel(imagePath: AssetConsts.bmw_x2, name: CarConst.bmw_x2),
  const CarModel(
      imagePath: AssetConsts.rolls_royce_ghost,
      name: CarConst.rolls_royce_ghost),
  const CarModel(
      imagePath: AssetConsts.range_rover, name: CarConst.range_rover),
];
