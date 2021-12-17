import 'package:car_rental/src/responsive_layout.dart';
import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final bool isSelected;
  final String title;

  const NavItem({
    Key? key,
    this.isSelected = false,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(padding: EdgeInsets.zero),
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
        leading: isSelected
            // ? Container(
            //     width: 60,
            //     height: 15,
            //     color: Theme.of(context).colorScheme.primaryVariant,
            //   )
            ? ResponsivePadding(
                phonePadding: EdgeInsets.only(top: 6),
                tabletPadding: EdgeInsets.zero,
                destopPadding: EdgeInsets.zero,
                child: ResponsiveContainer(
                  phoneSize: Size(40, 10),
                  tabletSize: Size(60, 15),
                  desktopSize: Size(60, 15),
                  child: Container(),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryVariant,
                  ),
                ),
              )
            : ResponsivePadding(
                phonePadding: EdgeInsets.only(top: 6),
                tabletPadding: EdgeInsets.zero,
                destopPadding: EdgeInsets.zero,
                child: ResponsiveContainer(
                  phoneSize: Size(40, 10),
                  tabletSize: Size(60, 15),
                  desktopSize: Size(60, 15),
                  child: Container(),
                  decoration: BoxDecoration(),
                ),
              ),
        title: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
              ),
        ),
      ),
    );
  }
}
