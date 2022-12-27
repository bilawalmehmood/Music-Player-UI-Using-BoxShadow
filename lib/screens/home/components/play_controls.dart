import 'package:flutter/material.dart';
import 'package:music_player_app_using_box_shaddow/screens/home/components/play_item_box.dart';

class PlayControls extends StatelessWidget {
  const PlayControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        PlayItemBox(size: 60, icon: Icons.repeat),
        PlayItemBox(size: 60, icon: Icons.skip_previous),
        PlayItemBox(size: 100, icon: Icons.play_arrow),
        PlayItemBox(size: 60, icon: Icons.skip_next),
        PlayItemBox(size: 60, icon: Icons.shuffle),
      ],
    );
  }
}
