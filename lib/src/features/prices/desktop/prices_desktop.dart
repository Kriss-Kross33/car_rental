import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../core/widgets/widgets.dart';
import '../common/price_switcher_widget.dart';
import '../common/prices_table.dart';

class PricesDesktop extends StatelessWidget {
  const PricesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 340,
              left: 40,
            ),
            child: PriceSwitcherWidget(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 100,
                    right: 100,
                    bottom: 50,
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          HeaderWidget(
                            text: AppConst.prices,
                            fontSize: 50,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          OrangeDivider(
                            width: 60,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          PricesTable()
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0, right: 10.0),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ElevatedButton(
                              child: Text(
                                'Individual Offer',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.copyWith(
                                      color: AppColor.white,
                                      fontSize: 16,
                                    ),
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 1.0,
                                primary: AppColor.deepOrange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
