import 'package:flutter/material.dart';
import 'package:graficas_demo/theme/app_theme.dart';

class CustomTextIconButton extends StatefulWidget {
  const CustomTextIconButton({
    super.key,
    this.width,
    this.height = 35,
    required this.isLoading,
    required this.icon,
    required this.text,
    this.style,
    this.onTap,
    this.color,
    this.border,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.enabled,
  });

  final double? width;
  final double? height;
  final Widget icon;
  final Color? color;
  final String text;
  final TextStyle? style;
  final bool? enabled;
  final bool isLoading;
  final Border? border;
  final Function()? onTap;
  final MainAxisAlignment mainAxisAlignment;

  @override
  State<CustomTextIconButton> createState() => CustomTextIconButtonState();
}

class CustomTextIconButtonState extends State<CustomTextIconButton> {
  bool hover = false;
  bool pressing = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.isLoading ? null : widget.onTap,
      onTapDown: (details) {
        setState(() {
          pressing = true;
        });
      },
      onTapUp: (details) {
        setState(() {
          pressing = false;
        });
      },
      onTapCancel: () {
        setState(() {
          pressing = false;
        });
      },
      child: MouseRegion(
        child: AnimatedContainer(
          height: widget.height,
          width: widget.width,
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: widget.color ?? AppTheme.primary, border:widget.border, boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.1,
              blurRadius: 3,
              offset: Offset(
                0,
                pressing
                    ? -2
                    : hover
                        ? 5
                        : 0,
              ), // changes position of shadow
            ),
          ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Center(
              child: widget.isLoading
                  ? const CircularProgressIndicator(
                      color: AppTheme.primaryBackground,
                    )
                  : Row(
                      mainAxisAlignment: widget.mainAxisAlignment,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        widget.icon,
                        const SizedBox(width: 5),
                        Text(
                          widget.text,
                          // style: TextStyle(color: AppTheme.of(context).primaryBackground),
                          style: widget.style ?? const TextStyle(fontFamily: 'UniNeue', color: AppTheme.primaryBackground),
                        ),
                      ],
                    ),
            ),
          ),
        ),
        onEnter: (event) {
          setState(() {
            hover = true;
          });
        },
        onExit: (event) {
          setState(() {
            hover = false;
          });
        },
      ),
    );
  }
}
