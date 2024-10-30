import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/profile_model.dart';
import 'package:flutterappfacebook/screen/tab_screen/group_screen.dart';
import 'package:flutterappfacebook/screen/tab_screen/home_screen.dart';
import 'package:flutterappfacebook/screen/tab_screen/menu_screen.dart';
import 'package:flutterappfacebook/screen/tab_screen/notification_screen.dart';
import 'package:flutterappfacebook/screen/tab_screen/profile_screen.dart';
import 'package:flutterappfacebook/screen/tab_screen/video_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        // Header
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('facebook',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue
            ),
          ),
          // Icon search and message
          actions: <Widget>[
            GestureDetector(
                onTap: () {

                },
                child: Image.asset(
                  'images/icon_add_home.png',
                  width: 22,
                  height: 22,
                  fit: BoxFit.cover,
                )
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.search)
            ),
            GestureDetector(
              onTap: () {

              },
              child: Image.asset(
                'images/message_post.png',
                width: 22,
                height: 22,
                fit: BoxFit.cover,
              )
            ),
            SizedBox(width: 20,)
          ],
      
        //   Tab bar
          bottom: TabBar(
              unselectedLabelColor: Colors.black54, //Mau truoc khi chon
              indicatorColor: Colors.blue, //Mau duong gạch duoi sau khi chon
              labelColor: Colors.blue, // Mau label sau khi duoc chon
              tabs: [
                Tab(icon: Icon(Icons.home_filled),),
                Tab(icon: Icon(Icons.group),),
                Tab(icon: Icon(Icons.person_outline),),
                Tab(icon: Icon(Icons.ondemand_video),),
                Tab(icon: Icon(Icons.notifications_none),),
                Tab(icon: Icon(Icons.menu),)
              ]
          ),
        ),
        
        body: TabBarView(
            children: [
              HomeScreen(),
              GroupScreen(),
              ProfileScreen(
                profileModel: ProfileModel(
                    backgroundUrl: 'images/post_1.jpg',
                    avatarUrl: 'images/story_1.jpg',
                    userName: 'Nguyễn Đức Duy',
                    friends: 198,
                    nameInstagram: 'ducduy.2810',
                    address: 'Nam Định',
                    relationship: 'Độc thân',
                    follower: 105
                ),
              ),
              VideoScreen(),
              NotificationScreen(),
              MenuScreen()
            ]
        ),
      ),
    );
  }
}
