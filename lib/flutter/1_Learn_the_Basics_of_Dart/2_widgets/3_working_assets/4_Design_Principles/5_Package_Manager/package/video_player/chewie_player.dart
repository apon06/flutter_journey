// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// import 'package:chewie/chewie.dart';

// class ChewieDemo extends StatefulWidget {
//   const ChewieDemo({Key? key}) : super(key: key);

//   @override
//   State<StatefulWidget> createState() => _ChewieDemoState();
// }

// class _ChewieDemoState extends State<ChewieDemo> {
//   late VideoPlayerController _videoPlayerController;
//   late ChewieController _chewieController;

//   @override
//   void initState() {
//     super.initState();
//     initializePlayer();
//   }

//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     _chewieController.dispose();
//     super.dispose();
//   }

//   Future<void> initializePlayer() async {
//     _videoPlayerController = VideoPlayerController.network(
//         'https://livess.ncare.live/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/dbcnews.stream/playlist.m3u8?wmsAuthSign=c2VydmVyX3RpbWU9NC84LzIwMjQgMjo0MDowNCBBTSZoYXNoX3ZhbHVlPVd6YU1DYlljOW9XaFh1Mm93VExiVXc9PSZ2YWxpZG1pbnV0ZXM9NjAmaWQ9NQ%3D%3D&fbclid=IwZXh0bgNhZW0CMTAAAR1J-Ne_G1ew9pkaNRyOTl-kVwHoPEeZaMNw_E9oOQDJmaihXySMMzkUPSg_aem_AW4xf7uCLA1GpUgVDXjkYI9EWl3mh7cRawgUYtH6SVyqHIJKEE352bGxZ-xlwJ25HnBDSSCWrYtoGsQktWR8NUJm');
//     await _videoPlayerController.initialize();
//     _chewieController = ChewieController(
//         videoPlayerController: _videoPlayerController,
//         autoPlay: true,
//         // looping: true,
//         aspectRatio: 16 / 9
//         // You can customize further ChewieController settings here
//         );
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: Center(
//               child: _chewieController.videoPlayerController.value.isInitialized
//                   ? Chewie(
//                       controller: _chewieController,
//                     )
//                   : const CircularProgressIndicator(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  final VideoPlayerController controller;
  const VideoPlayer({super.key, required this.controller});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.controller,
      aspectRatio: 16 / 9,
      autoPlay: true,
    );
  }

  @override
  void dispose() {
    _chewieController.dispose();
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(
      controller: _chewieController,
    );
  }
}

class VideoPlay extends StatelessWidget {
  const VideoPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: VideoPlayer(
          controller: VideoPlayerController.network(
            'https://live.jagobd.com:447/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/jamuna-test-sample-ok.stream/tracks-v1a1/mono.m3u8',
          ),
        ),
      ),
    );
  }
}
