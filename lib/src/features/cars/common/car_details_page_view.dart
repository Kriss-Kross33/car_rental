import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/models/car_details.dart';
import 'package:car_rental/src/core/service_locator/service_locator.dart';
import 'package:car_rental/src/features/cars/common/car_details.dart';
import 'package:car_rental/src/features/home/cubit/car_showcase_cubit/car_showcase_cubit.dart';
import 'package:car_rental/src/responsive_layout.dart';
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
            phoneSize: Size(380, 230),
            tabletSize: Size(750, 350),
            desktopSize: Size(750, 370),
            child: Center(
              child: PageView.builder(
                // physics: NeverScrollableScrollPhysics(),
                pageSnapping: true,
                controller: _controller,
                itemCount: carDetails.length,
                itemBuilder: (BuildContext context, int index) {
                  return carDetails
                      .map((car) => CarDetailsWidet(
                            car: car,
                            index: index,
                            controller: _controller,
                          ))
                      .toList()[index];
                },
                onPageChanged: (int index) {
                  _carShowcaseCubit.onPreviousPressed(index);
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  // if (_controller.page != _controller.initialPage) {
                  //   _carShowcaseCubit
                  //       .onPreviousPressed(_controller.page!.toInt());
                  // }
                  _controller.previousPage(
                      duration: Duration(milliseconds: 500),
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
              SizedBox(
                width: 25,
              ),
              IconButton(
                onPressed: () {
                  // if (_controller.page != carModels.length) {
                  //   _carShowcaseCubit.onNextPressed(_controller.page!.toInt());
                  // }
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
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
          )
        ],
      ),
    );
  }
}
