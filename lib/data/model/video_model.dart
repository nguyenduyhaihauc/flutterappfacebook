class VideoModel {
  final String imgAvatar;
  final String content;
  final int time;
  final String author;
  final int like;
  final int share;
  final int comments;
  final String videoUrl;

  VideoModel({
    required this.imgAvatar,
    required this.content,
    required this.time,
    required this.author,
    required this.like,
    required this.share,
    required this.comments,
    required this.videoUrl,
  });
}