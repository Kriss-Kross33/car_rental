// import 'dart:math' as math;

// import 'package:car_rental/src/core/themes/theme.dart';
// import 'package:flutter/material.dart';

// class SemiCircle extends StatelessWidget {
//   final double diameter;
//   final Color color;
//   final Widget? child;
//   const SemiCircle({
//     Key? key,
//     required this.diameter,
//     this.color = AppColor.imageBgColor,
//     this.child,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: SemiCirclePainter(color: color),
//       size: Size(diameter, diameter),
//       child: child,
//     );
//   }
// }

// class SemiCirclePainter extends CustomPainter {
//   final Color color;

//   const SemiCirclePainter({required this.color});

//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()..color = color;
//     canvas.drawArc(
//       Rect.fromCenter(
//         height: size.width,
//         width: size.height,
//         center: Offset(size.height / 2, size.width / 2),
//       ),
//       math.pi * 2.795,
//       math.pi * 1.4,
//       false,
//       paint,
//     );
//     canvas.drawImage(image, Offset(size.height / 2, size.width / 2), paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }

// class MyArc extends StatelessWidget {
//   final double diameter;

//   const MyArc({Key? key, this.diameter = 200}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: MyPainter(),
//       size: Size(diameter, diameter * 1.5),
//     );
//   }
// }

// // This is the Painter class
// class MyPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()..color = Colors.blue;
//     canvas.drawArc(
//       Rect.fromCenter(
//         center: Offset(size.height / 2, size.width / 2),
//         height: size.height,
//         width: size.width,
//       ),
//       math.pi,
//       math.pi,
//       false,
//       paint,
//     );
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

// class MyCircularArc extends CustomPainter {
//   //         <-- CustomPainter class
//   @override
//   void paint(Canvas canvas, Size size) {
//     final rect = Rect.fromLTRB(100, 100, 100, 100);
//     final startAngle = -math.pi / 2;
//     final sweepAngle = math.pi;
//     final useCenter = false;
//     final paint = Paint()
//       ..color = Colors.black
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 4;
//     canvas.drawArc(rect, startAngle, sweepAngle, useCenter, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter old) {
//     return false;
//   }
// }
