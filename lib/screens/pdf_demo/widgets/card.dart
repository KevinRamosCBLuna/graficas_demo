import 'package:flutter/material.dart';
import 'package:graficas_demo/public/colors.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/card_header.dart';
import 'package:graficas_demo/screens/pdf_demo/widgets/custom_scrollbar.dart';
import 'package:graficas_demo/theme/app_theme.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    super.key,
    required this.title,
    this.height,
    this.width,
    required this.child,
    this.padding = const EdgeInsets.all(0),
  });

  final String title;
  final double? height;
  final double? width;
  final Widget child;
  final EdgeInsets padding;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          border: Border.all(color: AppTheme.primary, width: 2),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          gradient: whiteGradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CardHeader(text: widget.title),
            SizedBox(
              height: widget.height != null ? widget.height! - 65 : null,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomScrollBar(
                  scrollDirection: Axis.vertical,
                  child: widget.child,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
