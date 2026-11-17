import 'dart:ui_web' as ui_web;
import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;

class ProjectVideo extends StatefulWidget {
  final String videoId;
  const ProjectVideo({super.key, required this.videoId});
  @override
  State<ProjectVideo> createState() => _ProjectVideoState();
}
class _ProjectVideoState extends State<ProjectVideo> {
  late final String viewType;
  @override
  void initState() {
    super.initState();
    viewType = 'youtube-${identityHashCode(this)}';
    ui_web.platformViewRegistry.registerViewFactory(viewType, (int id) {
      final frame = web.HTMLIFrameElement()
        ..src = 'https://www.youtube-nocookie.com/embed/${Uri.encodeComponent(widget.videoId)}'
        ..style.border = '0'
        ..allow = 'accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share'
        ..allowFullscreen = true;
      return frame;
    });
  }
  @override
  Widget build(BuildContext context) => AspectRatio(aspectRatio: 16 / 9, child: HtmlElementView(viewType: viewType));
}