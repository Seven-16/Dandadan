import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ProjectVideo extends StatefulWidget {
  final String videoId;
  const ProjectVideo({super.key, required this.videoId});
  @override
  State<ProjectVideo> createState() => _ProjectVideoState();
}
class _ProjectVideoState extends State<ProjectVideo> {
  late final YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(initialVideoId: widget.videoId, flags: const YoutubePlayerFlags(autoPlay: false));
  }
  @override
  void dispose() { controller.dispose(); super.dispose(); }
  @override
  Widget build(BuildContext context) => YoutubePlayer(controller: controller, showVideoProgressIndicator: true);
}