import 'package:car_rental/src/core/constants/app_const.dart';
import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/themes/theme.dart';
import 'package:car_rental/src/core/widgets/widgets.dart';
import 'package:car_rental/src/features/cars/common/widgets.dart';
import 'package:flutter/material.dart';

class CarsDesktop extends StatelessWidget {
  const CarsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 100,
              right: 100,
              bottom: 30,
            ),
            child: Stack(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    HeaderWidget(
                      text: AppConst.cars,
                      fontSize: 50,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    OrangeDivider(
                      width: 60,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CarDetailsPageView()
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Information',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                        child: VerticalDivider(
                          width: 1,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Availability',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                        child: VerticalDivider(
                          width: 1,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Prices',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Stack(
            children: [
              ClipRect(
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    AppColor.imageBgColor,
                    //Theme.of(context).colorScheme.secondary,
                    BlendMode.color,
                  ),
                  child: RightSidePanel(
                    child: Stack(
                      children: [
                        Image.asset(
                          AssetConsts.highway2,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height,
                        ),
                        LayoutBuilder(builder: (context, constraints) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: constraints.maxWidth * 0.12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 52,
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Text(
                                    AppConst.reservations,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.white,
                                          fontSize: 34,
                                          letterSpacing: 1.3,
                                        ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                const ReservationTextField(
                                  label: 'While',
                                  suffixIcon: Icon(
                                    Icons.calendar_month_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                const ReservationTextField(
                                  label: 'Till',
                                  suffixIcon: Icon(
                                    Icons.calendar_month_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                const ReservationTextField(
                                  label: 'At',
                                  suffixIcon: Icon(
                                    Icons.alarm_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                                const ReservationTextField(
                                  label: 'Location',
                                  suffixIcon: Icon(
                                    Icons.location_on_outlined,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRect(
                    //borderRadius: BorderRadius.circular(30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: const Size(
                          300,
                          70,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        AppConst.book_now,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              color: AppColor.white,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
