import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/notification_model.dart';

class NotificationItem extends StatelessWidget {

  final NotificationModel notifications;
  NotificationItem({required this.notifications});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      // color: Colors.greenAccent,
      margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(notifications.imgAvatar),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Container(
              // color: Colors.lightBlueAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notifications.userName,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87
                        ),
                      ),
                      Text(
                        notifications.content,
                        softWrap: true, //Cho phep xuong donh tu dong
                        overflow: TextOverflow.ellipsis, //Hien thi dau cham khi vuot qua dong
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 11,
                            // fontWeight: FontWeight.w300,
                            color: Colors.black54
                        ),
                      ),
                    ],
                  ),

                  Text(
                      notifications.time,
                      style: TextStyle(
                        fontSize: 11,
                        // fontWeight: FontWeight.w300,
                        color: Colors.grey
                      ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 30,
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_horiz_rounded, size: 20,)
            ),
          )
        ],
      ),
    );
  }
}
