import 'package:car_rental/src/core/constants/app_const.dart';
import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/themes/theme.dart';
import 'package:car_rental/src/core/widgets/widgets.dart';
import 'package:car_rental/src/features/home/widgets/widgets.dart';
import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomePhone extends StatelessWidget {
  const HomePhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 120,
                  left: 30,
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          AppConst.rentACar,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                wordSpacing: 3,
                                fontSize: 40,
                                height: 1,
                                letterSpacing: 1,
                              ),
                        ),
                        Text(
                          AppConst.fromPrice,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 30,
                                height: 1,
                              ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const OrangeDivider(
                          width: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: ClipRect(
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    AppColor.imageBgColor,
                    //Theme.of(context).colorScheme.secondary,
                    BlendMode.color,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 250),
                    child: RightSidePanel(
                      child: Image.asset(
                        AssetConsts.highway2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const CircularHighwayContainer(),
        const ResponsivePadding(
          phonePadding: EdgeInsets.only(top: 400),
          tabletPadding: EdgeInsets.only(top: 300, right: 200),
          destopPadding: EdgeInsets.only(top: 300, right: 200),
          child: Align(
            alignment: Alignment.centerRight,
            child: CarPageViewWidget(),
          ),
        ),
      ],
    );
  }
}

// return Stack(
//       children: [
       
//         Stack(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(right: 260, bottom: 70),
//               child: Align(
//                 alignment: Alignment.centerRight,
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(270.0),
//                   child: ColorFiltered(
//                     colorFilter: ColorFilter.mode(
//                       Color(0xfff73f1c),
//                       //Theme.of(context).colorScheme.secondary,
//                       BlendMode.overlay,
//                     ),
//                     child: Container(
//                       height: 540,
//                       width: 540,
//                       child: Image.asset(
//                         AssetConsts.highway2,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
            
//             Padding(
//               padding: const EdgeInsets.only(top: 300, right: 250),
//               child: Align(
//                 alignment: Alignment.centerRight,
//                 child: const CarPageViewWidget(),
//               ),
//             ),
//             // Row(
//             //   children: [
//             //     Container(
//             //       decoration: BoxDecoration(
//             //         borderRadius: BorderRadius.only(
//             //           topRight: Radius.circular(200),
//             //           topLeft: Radius.circular(200),
//             //           bottomLeft: Radius.circular(100),
//             //           bottomRight: Radius.circular(100),
//             //         ),
//             //         color: Colors.blue[300],
//             //       ),
//             //       width: 200,
//             //       height: 200,
//             //     ),
//             //   ],
//             // ),
//           ],
//         ),
//       ],
//     );
//   }
