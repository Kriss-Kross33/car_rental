import 'package:car_rental/src/core/constants/app_const.dart';
import 'package:car_rental/src/core/constants/asset_consts.dart';
import 'package:car_rental/src/core/themes/theme.dart';
import 'package:car_rental/src/core/widgets/widgets.dart';
import 'package:car_rental/src/features/home/widgets/widgets.dart';
import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 175,
                  left: 100,
                  right: 100,
                  bottom: 50,
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          AppConst.rentACar,
                          style:
                              Theme.of(context).textTheme.headline3?.copyWith(
                                    wordSpacing: 3,
                                    fontSize: 80,
                                    height: 1,
                                    letterSpacing: 3,
                                  ),
                        ),
                        Text(
                          AppConst.fromPrice,
                          style:
                              Theme.of(context).textTheme.headline3?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 70,
                                    height: 1,
                                  ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        OrangeDivider(
                          width: 40,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ClipRect(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    AppColor.imageBgColor,
                    //Theme.of(context).colorScheme.secondary,
                    BlendMode.color,
                  ),
                  child: RightSidePanel(
                    child: Image.asset(
                      AssetConsts.highway2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const CircularHighwayContainer(),
        ResponsivePadding(
          phonePadding: const EdgeInsets.only(top: 500, right: 200),
          tabletPadding: const EdgeInsets.only(top: 300, right: 200),
          destopPadding: const EdgeInsets.only(top: 300, right: 200),
          child: Align(
            alignment: Alignment.centerRight,
            child: const CarPageViewWidget(),
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
