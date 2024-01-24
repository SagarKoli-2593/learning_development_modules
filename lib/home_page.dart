import 'package:flutter/material.dart';

class CustomPaintHome extends StatefulWidget {
  const CustomPaintHome({super.key});

  @override
  State<CustomPaintHome> createState() => _CustomPaintHomeState();
}

class _CustomPaintHomeState extends State<CustomPaintHome>
    with TickerProviderStateMixin {
  double value = 0;
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeIn);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: RotationTransition(
        turns: animation,
        child: CustomPaint(foregroundPainter: LinePainter()),
      ),
    ));
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.amber
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;
    final paint2 = Paint()
      ..color = Colors.green
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    var path = Path();
    path.moveTo(size.width * 1 / 2, size.height * 1 / 4);
    path.lineTo(size.width * 1 / 6, size.height * 3 / 4);
    path.lineTo(size.width * 5 / 6, size.height * 3 / 4);
    path.close();

    var path2 = Path();
    path2.moveTo(size.width * 1 / 6, size.height * 0.4);
    path2.lineTo(size.width * 0.82, size.height * .4);
    path2.lineTo(size.width * 1 / 2, size.height * .9);
    path2.close();

    canvas.drawPath(path2, paint);
    canvas.drawPath(path, paint2);

    //draw simple line
    // canvas.drawLine(
    //   Offset(size.width * 1 / 6, size.height * 1 / 2),
    //   Offset(size.width * 5 / 6, size.height * 1 / 2),
    //   paint,
    // );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
