import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubePlayerWidget extends StatefulWidget {
  const YoutubePlayerWidget({Key? key}) : super(key: key);

  @override
  _YoutubePlayerWidgetState createState() => _YoutubePlayerWidgetState();
}

class _YoutubePlayerWidgetState extends State<YoutubePlayerWidget> {
  late YoutubePlayerController _ytbPlayerControllerc;
  @override
  void initState() {
    _ytbPlayerControllerc =
        YoutubePlayerController.fromVideoId(videoId: 'MZbXWnlmd8Q');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      backgroundColor: Colors.white,
      controller: _ytbPlayerControllerc,
      builder: (context, player) {
        return Container(
          child: player,
        );
      },
    );
  }
}
