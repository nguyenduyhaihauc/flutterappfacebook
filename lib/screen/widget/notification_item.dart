import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/notification_model.dart';

class NotificationItem extends StatelessWidget {

  final NotificationModel notifications;
  NotificationItem({required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      // color: Colors.greenAccent,
      margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(notifications.imgAvatar),
            ),
          ),
          SizedBox(width: 10,),
          // Username, content
          Expanded(
            child: Container(
              // color: Colors.lightBlueAccent,
              margin: EdgeInsets.only(top: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notifications.userName,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87
                    ),
                  ),
                  Text(
                    notifications.content,
                    softWrap: true, //Cho phep xuong donh tu dong
                    overflow: TextOverflow.ellipsis, //Hien thi dau cham khi vuot qua dong
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black54
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          // Icon more va thowi gian
          Container(
            width: 30,
            // color: Colors.red,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz_rounded, size: 22,)
                ),
                Text(
                  notifications.time,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
