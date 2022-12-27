import 'package:flutter/material.dart';
import 'package:music_player_app_using_box_shaddow/res/colors.dart';
import 'package:music_player_app_using_box_shaddow/screens/home/components/navigator_item.dart';

class MyNavigatorBar extends StatelessWidget {
  const MyNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            NavigatorItem(icon: Icons.arrow_back_ios),
            Text("Play Song",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkPrimeryColor,
                )),
            NavigatorItem(icon: Icons.list),
          ],
        ),
      ),
    );
  }
}
