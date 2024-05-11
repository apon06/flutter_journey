import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerEx extends StatefulWidget {
  const VideoPlayerEx({super.key});

  @override
  _VideoPlayerExState createState() => _VideoPlayerExState();
}

class _VideoPlayerExState extends State<VideoPlayerEx> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(

      Uri.parse(
        'https://livess.ncare.live/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/dbcnews.stream/playlist.m3u8?wmsAuthSign=c2VydmVyX3RpbWU9NC84LzIwMjQgMjo0MDowNCBBTSZoYXNoX3ZhbHVlPVd6YU1DYlljOW9XaFh1Mm93VExiVXc9PSZ2YWxpZG1pbnV0ZXM9NjAmaWQ9NQ%3D%3D&fbclid=IwZXh0bgNhZW0CMTAAAR1J-Ne_G1ew9pkaNRyOTl-kVwHoPEeZaMNw_E9oOQDJmaihXySMMzkUPSg_aem_AW4xf7uCLA1GpUgVDXjkYI9EWl3mh7cRawgUYtH6SVyqHIJKEE352bGxZ-xlwJ25HnBDSSCWrYtoGsQktWR8NUJm'))
      ..initialize().then((_) {
// https://livess.ncare.live/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/dbcnews.stream/playlist.m3u8?wmsAuthSign=c2VydmVyX3RpbWU9NC84LzIwMjQgMjo0MDowNCBBTSZoYXNoX3ZhbHVlPVd6YU1DYlljOW9XaFh1Mm93VExiVXc9PSZ2YWxpZG1pbnV0ZXM9NjAmaWQ9NQ%3D%3D&fbclid=IwZXh0bgNhZW0CMTAAAR1J-Ne_G1ew9pkaNRyOTl-kVwHoPEeZaMNw_E9oOQDJmaihXySMMzkUPSg_aem_AW4xf7uCLA1GpUgVDXjkYI9EWl3mh7cRawgUYtH6SVyqHIJKEE352bGxZ-xlwJ25HnBDSSCWrYtoGsQktWR8NUJm

        /// https://live.jagobd.com:447/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/jamuna-test-sample-ok.stream/tracks-v1a1/mono.m3u8
        ///

        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

// https://live.jagobd.com:447/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/jamuna-test-sample-ok.stream/tracks-v1a1/mono.m3u8



class VideoPlayerEx1 extends StatefulWidget {
  const VideoPlayerEx1({super.key});

  @override
  _VideoPlayerEx1State createState() => _VideoPlayerEx1State();
}

class _VideoPlayerEx1State extends State<VideoPlayerEx> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://livess.ncare.live/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/dbcnews.stream/playlist.m3u8?wmsAuthSign=c2VydmVyX3RpbWU9NC84LzIwMjQgMjo0MDowNCBBTSZoYXNoX3ZhbHVlPVd6YU1DYlljOW9XaFh1Mm93VExiVXc9PSZ2YWxpZG1pbnV0ZXM9NjAmaWQ9NQ%3D%3D&fbclid=IwZXh0bgNhZW0CMTAAAR1J-Ne_G1ew9pkaNRyOTl-kVwHoPEeZaMNw_E9oOQDJmaihXySMMzkUPSg_aem_AW4xf7uCLA1GpUgVDXjkYI9EWl3mh7cRawgUYtH6SVyqHIJKEE352bGxZ-xlwJ25HnBDSSCWrYtoGsQktWR8NUJm'))
      ..initialize().then((_) {
// https://livess.ncare.live/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/dbcnews.stream/playlist.m3u8?wmsAuthSign=c2VydmVyX3RpbWU9NC84LzIwMjQgMjo0MDowNCBBTSZoYXNoX3ZhbHVlPVd6YU1DYlljOW9XaFh1Mm93VExiVXc9PSZ2YWxpZG1pbnV0ZXM9NjAmaWQ9NQ%3D%3D&fbclid=IwZXh0bgNhZW0CMTAAAR1J-Ne_G1ew9pkaNRyOTl-kVwHoPEeZaMNw_E9oOQDJmaihXySMMzkUPSg_aem_AW4xf7uCLA1GpUgVDXjkYI9EWl3mh7cRawgUYtH6SVyqHIJKEE352bGxZ-xlwJ25HnBDSSCWrYtoGsQktWR8NUJm

        /// https://live.jagobd.com:447/c3VydmVyX8RpbEU9Mi8xNy8yMDE0GIDU6RgzQ6NTAgdEoaeFzbF92YWxIZTO0U0ezN1IzMyfvcGVMZEJCTEFWeVN3PTOmdFsaWRtaW51aiPhnPTI2/jamuna-test-sample-ok.stream/tracks-v1a1/mono.m3u8
        ///

        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: VideoPlayer(_controller),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     setState(() {
        //       _controller.value.isPlaying
        //           ? _controller.pause()
        //           : _controller.play();
        //     });
        //   },
          // child: Icon(
          //   _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          // ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
