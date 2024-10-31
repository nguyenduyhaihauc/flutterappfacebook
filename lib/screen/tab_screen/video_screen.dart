import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/video_model.dart';
import 'package:flutterappfacebook/screen/widget/video_item.dart';

class VideoScreen extends StatelessWidget {
  final List<VideoModel> videos = [
    VideoModel(
        imgAvatar: 'images/story_1.jpg',
        content: 'Cuoc song mau hong cung nhung chu to trang, cuoc doi mau hong '
            'cho ta nhieu cuoc song mau hong va day thu thach hon nua',
        time: 2,
        author: 'Vui moi ngay',
        like: 1400,
        share: 300,
        comments: 580,
        videoUrl: 'https://cdn.flowplayer.com/a30bd6bc-f98b-47bc-abf5-97633d4faea0/hls/de3f6ca7-2db3-4689-8160-0f574a5996ad/playlist.m3u8',
    ),
    VideoModel(
      imgAvatar: 'images/story_2.jpg',
      content: 'Cuoc song mau hong cung nhung chu to trang, cuoc doi mau hong '
          'cho ta nhieu cuoc song mau hong va day thu thach hon nua',
      time: 1,
      author: 'Vui moi ngay',
      like: 1400,
      share: 300,
      comments: 580,
      videoUrl: 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4',
    ),
    VideoModel(
      imgAvatar: 'images/story_3.jpg',
      content: 'Cuoc song mau hong cung nhung chu to trang, cuoc doi mau hong '
          'cho ta nhieu cuoc song mau hong va day thu thach hon nua',
      time: 4,
      author: 'Vui moi ngay',
      like: 1400,
      share: 300,
      comments: 580,
      videoUrl: 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
    ),
    VideoModel(
      imgAvatar: 'images/story_4.jpg',
      content: 'Cuoc song mau hong cung nhung chu to trang, cuoc doi mau hong '
          'cho ta nhieu cuoc song mau hong va day thu thach hon nua',
      time: 2,
      author: 'Vui moi ngay',
      like: 1400,
      share: 300,
      comments: 580,
      videoUrl: 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Title and Icon search
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            height: 50,
            // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Videos',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.w600,
                      fontSize: 21
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  width: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFDCDCDC)
                  ),
                  child: Icon(Icons.search),
                )
              ],
            ),
          ),

          //   List Video
          ListView.builder(
            itemCount: videos.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return VideoItem(video: videos[index]);
              }
          )
        ],
      ),
    );
  }
}
