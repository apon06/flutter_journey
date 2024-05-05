import 'package:flutter/material.dart';
import 'package:klutter_youtube_player_iframe_plus/klutter_youtube_player_iframe_plus.dart';

class MyYoutubePlayer extends StatelessWidget {
  const MyYoutubePlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: YoutubePlayerIframePlusHelp(
          initialVideoId: 'https://www.youtube.com/watch?v=bWXol_8MLzw',
          aspectRatio: 16 / 9,
        ),
      ),
    );
  }
}
