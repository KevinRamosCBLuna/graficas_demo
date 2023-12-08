import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:graficas_demo/theme/app_theme.dart';

class CustomScrollBar extends StatefulWidget {
  const CustomScrollBar({
    super.key,
    required this.child,
    required this.scrollDirection,
    this.clipBehavior = Clip.hardEdge,
  });

  final Widget child;
  final Axis scrollDirection;
  final Clip clipBehavior;

  @override
  State<CustomScrollBar> createState() => _CustomScrollBarState();
}

class _CustomScrollBarState extends State<CustomScrollBar> {
  final yourScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      if (yourScrollController.hasClients) {
        yourScrollController.animateTo(
          yourScrollController.position.minScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: yourScrollController,
      thumbColor: AppTheme.primary,
      radius: const Radius.circular(15),
      thickness: 5,
      thumbVisibility: false,
      child: SingleChildScrollView(
        scrollDirection: widget.scrollDirection,
        controller: yourScrollController,
        clipBehavior: widget.clipBehavior,
        child: widget.child,
      ),
    );
  }
}
