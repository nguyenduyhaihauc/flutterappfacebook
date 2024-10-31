import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/video_model.dart';
import 'package:video_player/video_player.dart';

class VideoItem extends StatefulWidget {
  final VideoModel video;
  final String? text;
  final int maxLines;

  VideoItem({
    Key? key,
    required this.video,
    this.text,
    this.maxLines = 2
  }) : super(key: key);

  @override
  _VideoItemState createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.video.videoUrl))
      ..initialize().then((_) {
        if (mounted) {
          setState(() {

          });
        }
      }).catchError((error) {
        print('Error initializing video: $error');
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      _isPlaying ? _controller.pause() : _controller.play();
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar, ten kenh, nut xoa va them
          Container(
            height: 50,
            // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(widget.video.imgAvatar),
                      radius: 20,
                    ),
                    // Ten kenh va gio chieu
                    Container(
                      height: 45,
                      // color: Colors.red,
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(widget.video.author, style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87
                              ),),
                              SizedBox(width: 5,),
                              GestureDetector(
                                  onTap: () {},
                                  child: Text('Theo doi', style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blueAccent
                                  ),)
                              )
                            ],
                          ),
                          Text('${widget.video.time} gio', style: TextStyle(
                              fontSize: 12,
                            color: Colors.grey
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
                // Nut xoa va them
                Container(
                  // height: 70,
                  // color: Colors.green,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz, size: 16,)
                      ),
                      Container(
                        width: 18,
                        height: 18,
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset('images/icon_cancel.png'),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          // Noi dung video
        Container(
          margin: EdgeInsets.only(bottom: 8),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              // Main content text
              Text(
                widget.video.content,
                maxLines: _isExpanded ? null : widget.maxLines,
                overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
              // "Xem thêm" text only shown when not expanded
              if (!_isExpanded)
                Positioned(
                  right: 0, // Align to the start of the container
                  bottom: 0, // Position it just below the last visible line of text
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isExpanded = true;
                      });
                    },
                    child: Text(
                      '...',
                      style: TextStyle(
                        color: Colors.black87, // Optional: Style for "Xem thêm"
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),

          // Hien thi va phat video
          Stack(
            children: [
              if (_controller.value.isInitialized)
                AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              else
                Container(
                  height: 200,
                  color: Colors.black12,
                  child: Center(child: CircularProgressIndicator()),
                ),
              // Nut tam dung va phat tiep
              Positioned.fill(
                child: GestureDetector(
                  onTap: _togglePlayPause,
                  child: Center(
                    child: Icon(
                      _isPlaying ? Icons.pause : Icons.play_arrow,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Thich, binh luan va chia se
          Container(
            height: 16,
            margin: EdgeInsets.only(top: 10),
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('images/icon_like.png'),
                    Image.asset('images/icon_tym.png'),
                    SizedBox(width: 5,),
                    Text(widget.video.like.toString(), style: TextStyle(
                        fontSize: 12
                    ),)
                  ],
                ),
                Row(
                  children: [
                    Text('${widget.video.comments} comment', style: TextStyle(
                        fontSize: 13
                    ),),
                    Container(
                      width: 10,
                        height: 10,
                        child: Image.asset('images/icon_dot.png',)
                    ),
                    Text('${widget.video.share} shares', style: TextStyle(
                        fontSize: 13
                    ),),
                  ],
                )
              ],
            ),
          ),
          // Cac nut tuong tac
          Container(
            height: 22,
            margin: EdgeInsets.only(top: 20, bottom: 5),
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {

                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/like_post.png', width: 20, height: 20, fit: BoxFit.cover,),
                      SizedBox(width: 5,),
                      Text('Thích')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/comment_post.png', width: 20, height: 20, fit: BoxFit.cover,),
                      SizedBox(width: 5,),
                      Text('Bình luận')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/message_post.png', width: 20, height: 20, fit: BoxFit.cover,),
                      SizedBox(width: 5,),
                      Text('Gửi')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/shared_post.png', width: 20, height: 20, fit: BoxFit.cover,),
                      SizedBox(width: 5,),
                      Text('Chia sẻ')
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade400,),
        ],
      ),
    );
  }
}