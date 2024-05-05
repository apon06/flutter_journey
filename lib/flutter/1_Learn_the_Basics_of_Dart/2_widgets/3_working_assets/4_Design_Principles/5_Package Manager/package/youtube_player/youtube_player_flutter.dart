import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerFlutter extends StatefulWidget {
  const YoutubePlayerFlutter({super.key});

  @override
  State<YoutubePlayerFlutter> createState() => _YoutubePlayerFlutterState();
}

class _YoutubePlayerFlutterState extends State<YoutubePlayerFlutter> {
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
