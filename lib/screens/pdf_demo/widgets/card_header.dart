import 'package:flutter/material.dart';
import 'package:graficas_demo/public/colors.dart';
import 'package:graficas_demo/theme/app_theme.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({
    super.key,
    required this.text,
    this.width,
    this.border,
    this.gradient,
  });

  final String text;
  final double? width;
  final Gradient? border;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(15),
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(15),
        ),
        gradient: border ?? blueGradient,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 40,
          width: width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(4),
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(4),
            ),
            gradient: gradient ?? blueRadial,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Center(
              child: Text(text,
                  style:const TextStyle(
                      fontFamily: 'UniNeue',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryBackground) /*  GoogleFonts.poppins(
                  color: AppTheme.of(context).primaryBackground,
                  fontSize: 25,
                  fontWeight: FontWeight.w600, */
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
