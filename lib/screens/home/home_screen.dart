import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player_app_using_box_shaddow/res/colors.dart';
import 'package:music_player_app_using_box_shaddow/screens/home/components/album_box.dart';
import 'package:music_player_app_using_box_shaddow/screens/home/components/my_navigator_bar.dart';
import 'package:music_player_app_using_box_shaddow/screens/home/components/play_controls.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RxDouble sliderValue = 20.0.obs;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.primeryColor,
      body: Column(
        children: [
          const MyNavigatorBar(),
          SizedBox(
            height: height / 2.5,
            child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const AlbumBox();
                }),
          ),
          const Text(
            "Gidgets",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: AppColors.darkPrimeryColor),
          ),
          const Text(
            "Frredom Movements",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: AppColors.darkPrimeryColor),
          ),
          Obx(
            () => Row(
              children: [
                Expanded(
                  child: SliderTheme(
                    data: const SliderThemeData(
                        trackHeight: 5,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 5)),
                    child: Slider(
                      min: 0,
                      max: 100,
                      value: sliderValue.value,
                      activeColor: AppColors.darkPrimeryColor,
                      inactiveColor:
                          AppColors.darkPrimeryColor.withOpacity(0.3),
                      onChanged: (value) {
                        sliderValue(value);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                  child: Center(
                    child: Text(
                      sliderValue.value.round().toString(),
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.darkPrimeryColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const PlayControls()
        ],
      ),
    );
  }
}
