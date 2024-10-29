class PostModel {
  final String userAvatar;
  final String userName;
  final String? status;
  final String time;
  final String location;
  final String? text;
  final List<String>? images;
  final String? video;
  final String like;
  final int comment;

  PostModel({
    required this.userAvatar,
    required this.userName,
    this.status,
    required this.time,
    required this.location,
    this.text,
    this.images,
    this.video,
    required this.like,
    required this.comment
  });
}