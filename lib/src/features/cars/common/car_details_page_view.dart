import 'package:car_rental/src/core/core.dart';
import 'package:car_rental/src/core/service_locator/service_locator.dart';
import 'package:car_rental/src/features/cars/common/car_details.dart';
import 'package:car_rental/src/features/home/cubit/car_showcase_cubit/car_showcase_cubit.dart';
import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarDetailsPageView extends StatefulWidget {
  const CarDetailsPageView({Key? key}) : super(key: key);

  @override
  State<CarDetailsPageView> createState() => _CarDetailsPageViewState();
}

class _CarDetailsPageViewState extends State<CarDetailsPageView> {
  late PageController _controller;

  final _carShowcaseCubit = locator<CarShowcaseCubit>();

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _carShowcaseCubit.onPageChanged(0, carModels[0]);
  }

  @override
  void dispose() {
    _controller.dispose();
    _carShowcaseCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CarShowcaseCubit>(
      create: (context) => _carShowcaseCubit,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveContainer(
            phoneSize: const Size(380, 230),
            tabletSize: const Size(750, 350),
            desktopSize: const Size(750, 370),
            child: Center(
              child: PageView.builder(
                // physics: NeverScrollableScrollPhysics(),
                pageSnapping: true,
                controller: _controller,
                itemCount: carModels.length,
                itemBuilder: (BuildContext context, int index) {
                  return carModels
                      .map((car) => CarDetailsWidet(
                            car: car,
                            index: index,
                            controller: _controller,
                          ))
                      .toList()[index];
                },
                onPageChanged: (int index) {
                  _carShowcaseCubit.onPageChanged(index, carModels[index]);
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  // if (_controller.page != _controller.initialPage) {
                  //   _carShowcaseCubit
                  //       .onPreviousPressed(_controller.page!.toInt());
                  // }
                  _controller.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                icon: Image.asset(
                  AssetConsts.left_arrow,
                  width: 100,
                  height: 20,
                  fit: BoxFit.fill,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const Spacer(),
              BlocBuilder<CarShowcaseCubit, CarShowcaseState>(
                builder: (context, state) {
                  if (state is CarShowcaseChangedState) {
                    return Text(
                      state.car.name,
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  // if (_controller.page != carModels.length) {
                  //   _carShowcaseCubit.onNextPressed(_controller.page!.toInt());
                  // }
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
                icon: Image.asset(
                  AssetConsts.right_arrow,
                  width: 100,
                  height: 20,
                  fit: BoxFit.fill,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          BlocBuilder<CarShowcaseCubit, CarShowcaseState>(
            builder: (context, state) {
              if (state is CarShowcaseChangedState) {
                final carDetail = state.car.details.specs;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Engine:'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Year:'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Doors:'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Drive Type:'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          carDetail.engine,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          carDetail.year.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          carDetail.doors.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          describeEnum(carDetail.driveType),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Fuel Type:'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Power:'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Gearbox:'),
                        SizedBox(
                          height: 5,
                        ),
                        Text('Acceleration:'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          describeEnum(carDetail.fuelType),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          carDetail.power.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          describeEnum(carDetail.gearBox),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          carDetail.acceleration,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
