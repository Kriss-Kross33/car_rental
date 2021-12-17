import 'package:car_rental/src/core/service_locator/service_locator.dart';
import 'package:car_rental/src/core/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/main/car_rental_main_screen.dart';
import 'features/main/cubit/nav_item_cubit/nav_item_cubit.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider>[
        BlocProvider<NavItemCubit>(
          create: (context) => locator<NavItemCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.defaultTheme,
        // darkTheme: AppTheme.darkTheme,
        home: CarRentalMainScreen(),
      ),
    );
  }
}
