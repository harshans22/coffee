import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GlassMorphism extends StatelessWidget {
  final double blur;
  final double opacity;
  final int borderradius;
  final Widget child;
  const GlassMorphism(
      {super.key,
      required this.blur,
      required this.child,
      required this.opacity,required this.borderradius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderradius.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(opacity),
              borderRadius: BorderRadius.all(
                Radius.circular(borderradius.r),
              ),
              border:
                  Border.all(width: 1.5, color: Colors.white.withOpacity(0.2))),
          child: child,
        ),
      ),
    );
  }
}
