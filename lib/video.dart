import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {

  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
        VideoPlayerController.networkUrl(
          Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
        ),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    body: SafeArea(
      child: Container(
        child: Column(
          children: [
            SafeArea(
              child: FlickVideoPlayer(
                  flickManager: flickManager
              ),
            ),
            const SizedBox(height: 10,),
            const Text('Suggested for you',style: TextStyle(
              color: Colors.white
            ),),
            const SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: Colors.black,
                      width: 2
                  ),
                  image: const DecorationImage(image: AssetImage('assets/st.png'),
                      fit: BoxFit.cover)
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
