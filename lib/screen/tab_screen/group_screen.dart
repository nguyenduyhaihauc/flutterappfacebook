import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/friend_model.dart';
import 'package:flutterappfacebook/screen/widget/friend_item.dart';

import '../../data/model/post_model.dart';
import '../widget/post_item.dart';

class GroupScreen extends StatelessWidget {
  final List<FriendModel> friends = [
    FriendModel(
        avatarUrl: 'images/story_1.jpg',
        userName: 'Duc Toan',
        time: '1 h',
        mutualFriends: 20
    ),
    FriendModel(
        avatarUrl: 'images/story_2.jpg',
        userName: 'Van Quyet',
        time: '39 w',
        mutualFriends: 1
    ),
    FriendModel(
        avatarUrl: 'images/story_3.jpg',
        userName: 'Tri Toan',
        time: '2 w',
        mutualFriends: 12
    ),
    FriendModel(
        avatarUrl: 'images/story_4.jpg',
        userName: 'Duc Tam',
        time: '23 w',
        mutualFriends: 23
    ),
    FriendModel(
        avatarUrl: 'images/post_1.jpg',
        userName: 'Nguyen Thi Yen',
        time: '1 h',
        mutualFriends: 20
    ),
    FriendModel(
        avatarUrl: 'images/post_2.jpg',
        userName: 'Du Nguyen',
        time: '39 w',
        mutualFriends: 1
    ),
    FriendModel(
        avatarUrl: 'images/post_3.jpg',
        userName: 'Nguyen Thi Mo',
        time: '2 w',
        mutualFriends: 12
    ),
    FriendModel(
        avatarUrl: 'images/post_4.jpg',
        userName: 'Pham Thi Thao',
        time: '23 w',
        mutualFriends: 23
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                  'Friends',
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

        //   Two Button
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 35,
            // color: Colors.red,
            child: Row(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: Text(
                      'Suggestions',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12
                      ),)
                ),
                SizedBox(width: 10,),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                    child: Text(
                      'Your Friends',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12
                      ),)
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Divider(color: Colors.grey,),
        //   Tong ban be va Sell all
          Container(
            height: 40,
            margin: EdgeInsets.only(left: 20, top: 4, bottom: 4),
            width: double.infinity,
            // color: Colors.lightBlue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Friend request', style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                      fontSize: 18
                    ),),
                    SizedBox(width: 10,),
                    Text('440', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                        fontSize: 18
                    ),)
                  ],
                ),
                TextButton(
                    onPressed: () {}, 
                    child: Text('Sell All', style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.blueAccent
                    ),)
                )
              ],
            ),
          ),
          
        //   Danh sach ban be
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: friends.length,
              itemBuilder: (context, index) {
                return FriendItem(friendModel: friends[index]);
              }
          )
        ],
      ),
    );
  }
}
