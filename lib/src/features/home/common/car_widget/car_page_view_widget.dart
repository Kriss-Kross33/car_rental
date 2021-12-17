import 'package:car_rental/src/core/models/car_model.dart';
import 'package:car_rental/src/core/service_locator/service_locator.dart';
import 'package:car_rental/src/features/home/common/widgets.dart';
import 'package:car_rental/src/features/home/cubit/car_showcase_cubit/car_showcase_cubit.dart';
import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarPageViewWidget extends StatefulWidget {
  const CarPageViewWidget({Key? key}) : super(key: key);

  @override
  _CarPageViewWidgetState createState() => _CarPageViewWidgetState();
}

class _CarPageViewWidgetState extends State<CarPageViewWidget> {
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
    return BlocProvider(
      create: (context) => _carShowcaseCubit,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveContainer(
            phoneSize: Size(380, 230),
            tabletSize: Size(750, 350),
            desktopSize: Size(750, 350),
            child: Center(
              child: PageView.builder(
                // physics: NeverScrollableScrollPhysics(),
                pageSnapping: true,
                controller: _controller,
                itemCount: carModels.length,
                itemBuilder: (BuildContext context, int index) {
                  return carModels
                      .map((car) => CarWidget(
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
                icon: Icon(
                  Icons.arrow_back,
                  size: 20,
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
                icon: Icon(
                  Icons.arrow_forward,
                  size: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
