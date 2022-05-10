import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget phone;
  final Widget tablet;
  final Widget desktop;

  static const int phoneLimit = 650;
  static const int tabletLimit = 1100;

  const ResponsiveLayout({
    Key? key,
    required this.phone,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isPhone(BuildContext context) =>
      MediaQuery.of(context).size.width < phoneLimit;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= phoneLimit &&
      MediaQuery.of(context).size.width < tabletLimit;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= tabletLimit) {
          return desktop;
        } else if (constraints.maxWidth >= phoneLimit) {
          return tablet;
        }
        return phone;
      },
    );
  }
}

class ResponsivePadding extends StatelessWidget {
  final EdgeInsetsGeometry phonePadding;
  final EdgeInsetsGeometry tabletPadding;
  final EdgeInsetsGeometry destopPadding;
  final Widget child;

  const ResponsivePadding({
    Key? key,
    required this.phonePadding,
    required this.tabletPadding,
    required this.destopPadding,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      phone: Padding(
        padding: phonePadding,
        child: child,
      ),
      tablet: Padding(
        padding: tabletPadding,
        child: child,
      ),
      desktop: Padding(
        padding: destopPadding,
        child: child,
      ),
    );
  }
}

class ResponsiveContainer extends StatelessWidget {
  final Size phoneSize;
  final Size tabletSize;
  final Size desktopSize;
  final Widget? child;
  final BoxDecoration? decoration;

  const ResponsiveContainer({
    Key? key,
    required this.phoneSize,
    required this.tabletSize,
    required this.desktopSize,
    required this.child,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      phone: CustomContainer(
        width: phoneSize.width,
        height: phoneSize.height,
        decoration: decoration,
        child: child,
      ),
      tablet: CustomContainer(
        width: tabletSize.width,
        height: tabletSize.height,
        decoration: decoration,
        child: child,
      ),
      desktop: CustomContainer(
        width: desktopSize.width,
        height: desktopSize.height,
        decoration: decoration,
        child: child,
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;
  final BoxDecoration? decoration;

  const CustomContainer({
    Key? key,
    this.child,
    this.width,
    this.height,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration,
      child: child,
    );
  }
}
