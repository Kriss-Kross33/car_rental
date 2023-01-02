import 'package:car_rental/src/features/prices/common/price_switcher_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/prices_switcher_cubit.dart';

class PriceSwitcherWidget extends StatefulWidget {
  const PriceSwitcherWidget({Key? key}) : super(key: key);

  @override
  State<PriceSwitcherWidget> createState() => _PriceSwitcherWidgetState();
}

class _PriceSwitcherWidgetState extends State<PriceSwitcherWidget> {
  late PricesSwitcherCubit _pricesSwitcherCubit;
  @override
  void initState() {
    _pricesSwitcherCubit = PricesSwitcherCubit();
    _pricesSwitcherCubit.onPricesIndicatorSelected(0);
    super.initState();
  }

  @override
  void dispose() {
    _pricesSwitcherCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        7,
        (index) => Padding(
          padding: const EdgeInsets.only(bottom: 25),
          child: InkWell(
            onTap: () => _pricesSwitcherCubit.onPricesIndicatorSelected(index),
            child: BlocBuilder<PricesSwitcherCubit, PricesSwitcherState>(
              bloc: _pricesSwitcherCubit,
              builder: (context, state) {
                if (state is PricesSwitcherChangedState) {
                  return PriceSwitcherIndicator(
                    isSelected: state.index == index ? true : false,
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ),
    );
  }
}
