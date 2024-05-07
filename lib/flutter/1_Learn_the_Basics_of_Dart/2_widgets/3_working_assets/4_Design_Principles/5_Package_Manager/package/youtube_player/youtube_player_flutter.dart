import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerFlutter extends StatelessWidget {
  const YoutubePlayerFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              YoutubePlayer(
                controller: YoutubePlayerController(
                  initialVideoId: 'BlCcJCKnY-I',
                  // flags: YoutubePlayerFlags(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
