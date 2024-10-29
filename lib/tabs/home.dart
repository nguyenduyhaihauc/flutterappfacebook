import 'package:flutter/material.dart';
import 'package:flutterappfacebook/screen/story_detail_screen.dart';
import 'package:flutterappfacebook/widget/story_item.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Map<String, String>> stories = [
    {
      'imgUrl': 'images/story_1.jpg',
      'imgAvatar': 'images/story_2.jpg',
      'userName': 'Duy Nguyen'
    },
    {
      'imgUrl': 'images/story_2.jpg',
      'imgAvatar': 'images/story_1.jpg',
      'userName': 'Tri Toan'
    },
    {
      'imgUrl': 'images/story_3.jpg',
      'imgAvatar': 'images/story_4.jpg',
      'userName': 'Van Quyet'
    },
    {
      'imgUrl': 'images/story_4.jpg',
      'imgAvatar': 'images/story_3.jpg',
      'userName': 'Duc Toan'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        // Viec khai bao Widget giup dam bao cac phan tu ben trong deu la Widget
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 360,
            height: 50,
            // color: Colors.blue,
            child: Row(
              children: <Widget>[
                // Icon avatar
                Column(
                  children: <Widget>[
                    IconButton(
                        onPressed: () {}, 
                        icon: Icon(Icons.person_pin, size: 30,)
                    )
                  ],
                ),
                // Thanh trang tai
                Column(
                  children: <Widget>[
                    OutlinedButton(
                        onPressed: () {},
                        child: Text('Bạn đang nghĩ gì ?',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                        ),),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                            color: Colors.grey,
                            width: 1
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          padding: EdgeInsets.only(left: 10, top: 2, right: 140, bottom: 2)
                        ),
                    )
                  ],
                ),
                // Image Picker
                Container(
                  // color: Colors.blue,
                  width: 50,
                  child: Icon(
                    Icons.image_rounded,
                    color: Colors.green,
                    size: 30,
                  ),
                )
              ],
            ),
          ),

          Container(
            width: 360,
            height: 40,
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 78,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFFFF5B0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.movie_filter_outlined, color: Color(0xFFFFC300),),
                      Text("Reels", style: TextStyle(color: Color(0xFFFFC300)),)
                    ],
                  ),
                ),
                Container(
                  width: 78,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFD0E8D0)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.video_call_sharp, color: Color(0xFF228B22),),
                      Text("Room", style: TextStyle(color: Color(0xFF228B22)),)
                    ],
                  ),
                ),
                Container(
                  width: 78,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFFFCCCB)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.groups, color: Color(0xFFFF0000),),
                      Text("Group", style: TextStyle(color: Color(0xFFFF0000)),)
                    ],
                  ),
                ),
                Container(
                  width: 78,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFADD8E6)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.voice_chat_rounded, color: Color(0xFF00008B),),
                      Text("Live", style: TextStyle(color: Color(0xFF00008B)),)
                    ],
                  ),
                )
              ],
            ),
          ),

        //   story
          Container(
            // color: Colors.blue,
            margin: EdgeInsets.only(top: 20),
            height: 180,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      // Story Item
                      StoryItem(
                          imgUrl: stories[index]['imgUrl']!,
                          userName: stories[index]['userName']!,
                          imgAvatar: stories[index]['imgAvatar']!,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => StoryDetailScreen(
                                    imageUrl: stories[index]['imgUrl']!,
                                    userName: stories[index]['userName']!,
                                    imgAvatar: stories[index]['imgAvatar']!,
                                ))
                            );
                          }
                      ),
                    ],
                  );
                }
            ),
          )


        ],
      )
    );
  }
}
