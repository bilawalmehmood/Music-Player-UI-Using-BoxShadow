import 'package:flutter/material.dart';

class AppColors {
  static const Color primeryColor = Color(0xff849dab);
  static const Color darkPrimeryColor = Color(0xff034c65);
  static const Color whiteColor = Colors.white;

  static final List<BoxShadow> smallItemBoxShadow = [
    BoxShadow(
      color: AppColors.darkPrimeryColor.withOpacity(0.5),
      offset: const Offset(5, 10),
      spreadRadius: 3,
      blurRadius: 10,
    ),
    const BoxShadow(
      color: AppColors.whiteColor,
      offset: Offset(-3, -4),
      spreadRadius: -2,
      blurRadius: 20,
    )
  ];
  static final List<BoxShadow> albumBoxShadow = [
    const BoxShadow(
      color: AppColors.darkPrimeryColor,
      offset: Offset(20, 8),
      spreadRadius: 3,
      blurRadius: 25,
    ),
    const BoxShadow(
      color: AppColors.whiteColor,
      offset: Offset(-3, -4),
      spreadRadius: -2,
      blurRadius: 20,
    )
  ];
}
