import 'package:flutter/material.dart';
import 'package:music_player_app_using_box_shaddow/res/colors.dart';

class AlbumBox extends StatelessWidget {
  const AlbumBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 220,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.primeryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: AppColors.albumBoxShadow,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/images/music.jpg",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
