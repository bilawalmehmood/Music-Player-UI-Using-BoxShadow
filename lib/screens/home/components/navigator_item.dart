// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:music_player_app_using_box_shaddow/res/colors.dart';

class NavigatorItem extends StatelessWidget {
  final IconData? icon;
  const NavigatorItem({
    Key? key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: AppColors.primeryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: AppColors.smallItemBoxShadow,
        ),
        child: Icon(
          icon,
          color: AppColors.darkPrimeryColor,
        ),
      ),
    );
  }
}
