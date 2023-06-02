import 'package:flutter/material.dart';

class ReservationTextField extends StatelessWidget {
  const ReservationTextField({
    super.key,
    required this.label,
    this.suffixIcon,
  });

  final String label;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
        ),
        SizedBox(
          height: 40,
          child: TextField(
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              suffixIcon: suffixIcon,
              border: const UnderlineInputBorder(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(30)),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        CurvedLine(
          width: MediaQuery.of(context).size.width,
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}

class CurvedLine extends StatelessWidget {
  const CurvedLine({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: const CustomPaint(
        painter: CurvedLinePainter(),
      ),
    );
  }
}

class CurvedLinePainter extends CustomPainter {
  const CurvedLinePainter();
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..isAntiAlias = true
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    final path = Path();
    // path.lineTo(0.0, size.height);
    // var firstEndPoint = const Offset(0.0, 0);
    // var firstControlPoint = Offset(size.width, size.height - 50.0);
    // path.quadraticBezierTo(
    //     firstControlPoint.dx, firstControlPoint.dy, size.width, 0);
    // var secondEndPoint = Offset(size.width, size.height - 85.0);
    // var secondControlPoint = Offset(size.width * 0.75, size.height - 10);
    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    //     secondEndPoint.dx, secondEndPoint.dy);
    var firstEndPoint = const Offset(0.0, 0);
    var firstControlPoint = const Offset(-10, -20);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    // path.quadraticBezierTo(
    //     firstEndPoint.dx, firstEndPoint.dy, secondEndPoint.dx, 0);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
