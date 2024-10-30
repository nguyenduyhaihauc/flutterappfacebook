import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/friend_model.dart';

class FriendItem extends StatelessWidget {
  final FriendModel friendModel;

  FriendItem({required this.friendModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      // color: Colors.lightBlueAccent,
      margin: EdgeInsets.only(bottom: 15, left: 15, right: 15),
      child: Row(
        children: [
          // anh dai dien
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(friendModel.avatarUrl),
            ),
          ),
        // Ten
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 45,
                  // color: Colors.red,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            friendModel.userName,
                            style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87
                            ),
                          ),
                          Text(
                            '${friendModel.mutualFriends} mutual friends',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey
                            ),
                          )
                        ],
                      ),
                      Text(
                        friendModel.time,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 32,
                  // color: Colors.green,
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 30),
                          ),
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12
                            ),)
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFDCDCDC),
                            foregroundColor: Colors.black54,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 30),
                          ),
                          child: Text(
                            'Delete',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12
                            ),)
                      ),
                    ],
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
