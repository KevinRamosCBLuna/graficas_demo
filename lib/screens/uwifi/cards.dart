import 'package:flutter/material.dart';
import 'package:graficas_demo/theme/app_theme.dart';

class SupportFormCard extends StatefulWidget {
  const SupportFormCard({
    super.key,
    this.title1,
    required this.icon1,
    this.title2,
    required this.children,
    this.height = 290,
    this.title = false,
  });

  final String? title1;
  final String? title2;
  final IconData icon1;
  final List<Widget> children;
  final int? height;
  final bool title;

  @override
  State<SupportFormCard> createState() => _SupportFormCardState();
}

class _SupportFormCardState extends State<SupportFormCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 1080;
    return Container(
      height: height * widget.height!,
      padding: const EdgeInsets.all(10),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title1 != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  Icon(widget.icon1),
                  Text(
                    widget.title1!,
                    style: AppTheme.primarStyle
                  )
                ],
              ),
            ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (widget.title2 != null) // Verifica si title2 no es nulo
                    Text(
                      widget.title2!,
                      style: AppTheme.secundaryStyle
                    ),
                  if (widget.children.isNotEmpty) // Verifica si hay widgets adicionales para mostrar
                    ...widget.children,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
