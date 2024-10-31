import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/notification_model.dart';
import 'package:flutterappfacebook/screen/widget/notification_item.dart';

class NotificationScreen extends StatelessWidget {
  final List<NotificationModel> notifications = [
    NotificationModel(
        imgAvatar: 'images/story_1.jpg',
        userName: 'Am nhac cua toi',
        content: 'Tam trang mua thu voi nhung ban nhac moi',
        time: '1 h'
    ),
    NotificationModel(
        imgAvatar: 'images/story_2.jpg',
        userName: 'Music am nhac chua lanh',
        content: 'Hioa minh vao vowi nhung ban nhac moi trong mua thu Ha Noi',
        time: '2 h'
    ),
    NotificationModel(
        imgAvatar: 'images/story_3.jpg',
        userName: 'Thanh pho buan',
        content: 'Hoa minh duoi anh den vang cua mua thu Ha Noi ',
        time: '2 h'
    ),
    NotificationModel(
        imgAvatar: 'images/story_4.jpg',
        userName: 'Am nhac cua toi',
        content: 'Tam trang mua thu voi nhung ban nhac moi',
        time: '2 h'
    ),
    NotificationModel(
        imgAvatar: 'images/post_1.jpg',
        userName: 'Am nhac cua toi',
        content: 'Tam trang mua thu voi nhung ban nhac moi',
        time: '2 h'
    ),
    NotificationModel(
        imgAvatar: 'images/post_2.jpg',
        userName: 'Am nhac cua toi',
        content: 'Tam trang mua thu voi nhung ban nhac moi',
        time: '2 h'
    ),
    NotificationModel(
        imgAvatar: 'images/post_3.jpg',
        userName: 'Am nhac cua toi',
        content: 'Tam trang mua thu voi nhung ban nhac moi',
        time: '2 h'
    ),
    NotificationModel(
        imgAvatar: 'images/post_4.jpg',
        userName: 'Am nhac cua toi',
        content: 'Tam trang mua thu voi nhung ban nhac moi',
        time: '2 h'
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
                  'Notifications',
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

        //   List thong bao
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return NotificationItem(notifications: notifications[index]);
              }
          )
        ],
      ),
    );
  }
}
