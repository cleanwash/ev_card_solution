// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppGradient extends StatelessWidget {
  final double? height;
  final double? width;
  double? borderRadius;
  EdgeInsetsGeometry? padding = const EdgeInsets.all(0);
  EdgeInsetsGeometry? margin = const EdgeInsets.all(0);
  final Widget? child;
  AppGradient({
    super.key,
    this.height,
    this.width,
    this.borderRadius,
    this.padding,
    this.margin,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        padding: padding,
        height: height ?? 100.h,
        width: width ?? 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 0, 0, 0),
              Colors.black.withOpacity(.9),
              // Color.fromARGB(255, 34, 22, 18)
              Color.fromARGB(255, 172, 147, 139)
            ],
            begin: Alignment.topLeft,
            stops: const [0.0, 0.5, 0.8],
            end: Alignment.bottomRight,
          ),
        ),
        child: child);
  }
}
