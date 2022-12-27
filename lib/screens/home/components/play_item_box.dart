// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:music_player_app_using_box_shaddow/res/colors.dart';

class PlayItemBox extends StatelessWidget {
  final IconData? icon;
  final double? size;
  const PlayItemBox({
    Key? key,
    this.icon,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: AppColors.primeryColor,
        shape: BoxShape.circle,
        boxShadow: AppColors.albumBoxShadow,
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: AppColors.darkPrimeryColor,
                shape: BoxShape.circle,
                boxShadow: AppColors.albumBoxShadow),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
                color: AppColors.primeryColor, shape: BoxShape.circle),
            child: Center(
              child: Icon(
                icon,
                color: AppColors.darkPrimeryColor,
                size: size! / 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
