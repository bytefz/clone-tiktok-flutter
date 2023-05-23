import 'dart:convert';

import 'package:toktik/domain/entities/video_post.dart';

LocalVideo localVideoFromJson(String str) =>
    LocalVideo.fromJson(json.decode(str));

String localVideoToJson(LocalVideo data) => json.encode(data.toJson());

class LocalVideo {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideo({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideo.fromJson(Map<String, dynamic> json) => LocalVideo(
        likes: json['likes'] ?? 0,
        name: json['name'] ?? 'No Name',
        videoUrl: json['videoUrl'],
        views: json['views'] ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "videoUrl": videoUrl,
        "likes": likes,
        "views": views,
      };

  VideoPost toVideoPostEntity() => VideoPost(
        caption: name,
        videoUrl: videoUrl,
        likes: likes,
        views: views,
      );
}
