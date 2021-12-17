import 'package:car_rental/src/features/main/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SidebarSection extends StatelessWidget {
  const SidebarSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(top: 150, bottom: 10),
        child: Container(
          child: Row(
            children: [
              Flexible(
                child: SideBar(),
              ),
              Container(
                color: Theme.of(context).colorScheme.primaryVariant,
                child: VerticalDivider(
                  width: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
