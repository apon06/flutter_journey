import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerEx1 extends StatefulWidget {
  const VideoPlayerEx1({Key? key}) : super(key: key);

  @override
  _VideoPlayerEx1State createState() => _VideoPlayerEx1State();
}

class _VideoPlayerEx1State extends State<VideoPlayerEx1> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  // bool _isFullScreen = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://livess.ncare.live/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/dbcnews.stream/playlist.m3u8?wmsAuthSign=c2VydmVyX3RpbWU9NC84LzIwMjQgMjo0MDowNCBBTSZoYXNoX3ZhbHVlPVd6YU1DYlljOW9XaFh1Mm93VExiVXc9PSZ2YWxpZG1pbnV0ZXM9NjAmaWQ9NQ%3D%3D&fbclid=IwZXh0bgNhZW0CMTAAAR1J-Ne_G1ew9pkaNRyOTl-kVwHoPEeZaMNw_E9oOQDJmaihXySMMzkUPSg_aem_AW4xf7uCLA1GpUgVDXjkYI9EWl3mh7cRawgUYtH6SVyqHIJKEE352bGxZ-xlwJ25HnBDSSCWrYtoGsQktWR8NUJm');
    _initializeVideoPlayerFuture = _controller.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Player'),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  VideoPlayer(_controller),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (_controller.value.isPlaying) {
                          _controller.pause();
                        } else {
                          _controller.play();
                        }
                      });
                    },
                    icon: Icon(
                      _controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                  // Positioned(
                  //   bottom: 16,
                  //   right: 16,
                  //   child: IconButton(
                  //     onPressed: () {
                  //       setState(() {
                  //         Navigator.of(context).push(MaterialPageRoute(builder: (b)=> const VideoPlayerFullScreen()));
                  //       });
                  //     },
                  //     icon: const Icon(
                  //       Icons.fullscreen,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

/*

c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/dbcnews.stream/playlist.m3u8?wmsAuthSign=c2VydmVyX3RpbWU9NC84LzIwMjQgMjo0MDowNCBBTSZoYXNoX3ZhbHVlPVd6YU1DYlljOW9XaFh1Mm93VExiVXc9PSZ2YWxpZG1pbnV0ZXM9NjAmaWQ9NQ%3D%3D&fbclid=IwZXh0bgNhZW0CMTAAAR1J-Ne_G1ew9pkaNRyOTl-kVwHoPEeZaMNw_E9oOQDJmaihXySMMzkUPSg_aem_AW4xf7uCLA1GpUgVDXjkYI9EWl3mh7cRawgUYtH6SVyqHIJKEE352bGxZ-xlwJ25HnBDSSCWrYtoGsQktWR8NUJm


https://live.jagobd.com:447/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/jamuna-test-sample-ok.stream/tracks-v1a1/mono.m3u8

*/