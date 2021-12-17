import 'package:car_rental/src/features/home/cubit/car_showcase_cubit/car_showcase_cubit.dart';
import 'package:car_rental/src/features/main/cubit/nav_item_cubit/nav_item_cubit.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<NavItemCubit>(() => NavItemCubit());
  locator.registerFactory<CarShowcaseCubit>(() => CarShowcaseCubit());
}
