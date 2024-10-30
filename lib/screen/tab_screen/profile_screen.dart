import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/profile_model.dart';
import 'package:flutterappfacebook/screen/widget/post_item.dart';

import '../../data/model/post_model.dart';

class ProfileScreen extends StatelessWidget {

  final ProfileModel profileModel;
  ProfileScreen({required this.profileModel});

  // Dialog hien thi anh phong to khi click vao
  void _showFullImage(BuildContext context, String imageUrl) {
    showDialog(
        context: context,
        builder: (_) => Dialog(
          child: Image.asset(imageUrl),
        )
    );
  }

  // List bai viet
  final List<PostModel> posts = [
    PostModel(
        userAvatar: 'images/story_1.jpg',
        userName: 'Duy Nguyen',
        status: 'cam thay hanh phuc',
        time: '1h',
        location: 'Hai Ly, Hai Hau',
        text: 'Tet 2024 \n Ki niem dep cung cac thanh vien',
        images: ['images/post_2.jpg'],
        like: 'nguyen toan va 43 nguoi khac',
        comment: 14
    ),
    PostModel(
        userAvatar: 'images/story_2.jpg',
        userName: 'Duc Toan',
        status: 'dang cam thay vui ve',
        time: '30 phut',
        location: 'Hai Hau, Nam Dinh',
        text: 'Binh Yen',
        images: ['images/post_3.jpg'],
        like: 'van quyet va 120 nguoi khac',
        comment: 21
    ),
    PostModel(
        userAvatar: 'images/story_3.jpg',
        userName: 'Duy Nguyen',
        status: 'hanh phuc, vui ve',
        time: '2h',
        location: 'Hai Hau, Nam Dinh',
        text: 'Ki niem 2024',
        images: ['images/post_1.jpg'],
        like: 'tri toan va 180 nguoi khac',
        comment: 51
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        //   Background amd avatar
          Stack(
            clipBehavior: Clip.none, //Giup avatar c the de ben ngoai Stack
            children: [
              // Background
              Stack(
                children:[
                  GestureDetector(
                    onTap: () => _showFullImage(context, profileModel.backgroundUrl),
                    child: Image.asset(
                      profileModel.backgroundUrl,
                      width: double.infinity,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        width: 25,
                        height: 25,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Color(0xFFDCDCDC),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset('images/camera_profile.png'),
                        ),
                      )
                  )
                ]
              ),
              // Avatar
              Positioned(
                  bottom: -40, //Day avatar xuong
                  left: MediaQuery.of(context).size.width / 2 - 170, //Can gia avatar
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () => _showFullImage(context, profileModel.avatarUrl),
                        child: Container(
                          width: 130,
                          height: 130,
                          padding: EdgeInsets.all(3), //Khoang dem
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(profileModel.avatarUrl),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          right: 12,
                          child: Container(
                            width: 20,
                            height: 20,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFDCDCDC),
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset('images/camera_profile.png'),
                            ),
                          )
                      )
                    ]
                  ),
              )
            ],
          ),

          SizedBox(height: 45,),
          // Username
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profileModel.userName,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87
                  ),
                ),
                // SizedBox(height: 5,),
                Row(
                  children: [
                    Text(
                        profileModel.friends.toString(),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87
                      ),
                    ),
                    SizedBox(width: 3,),
                    Text(
                      'người bạn',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          // Nut them story va Edit Profile
          Container(
            height: 100,
            // color: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                        // elevation: 5,// Do bong
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 35),
                      ),
                      icon: Icon(Icons.add, color: Colors.white, size: 16,),
                      label: Text(
                        'Add to story',
                        style: TextStyle(
                        fontWeight: FontWeight.w600,
                          fontSize: 12
                      ),)
                  ),
                ),
                SizedBox(width: 20,),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFDCDCDC),
                            foregroundColor: Colors.black87,
                            // elevation: 5,// Do bong
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)
                            ),
                            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 35),
                          ),
                          icon: Icon(Icons.edit, color: Colors.black87, size: 16,),
                          label: Text(
                            'Edit profile',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12
                          ),)
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xFFDCDCDC),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz_rounded, size: 16,)
                      ),
                    )
                  ],
                ),

              ],
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
              child: Divider(color: Colors.grey,)
          ),
        //   Chuyen doi bai viet
          Container(
            height: 35,
            // color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {  },
                  child: Text('Post',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600
                      )
                  ),
                ),
                SizedBox(width: 5,),
                TextButton(
                  onPressed: () {  },
                  child: Text('Image',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600
                      )
                  ),
                ),
                SizedBox(width: 5,),
                TextButton(
                  onPressed: () {  },
                  child: Text('Video',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w600
                      )
                  ),
                ),
              ],
            ),
          ),

          Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: Divider(color: Colors.grey,)
          ),

        //   Gioi thieu ban than
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            height: 290,
            width: double.infinity,
            // color: Colors.lightBlueAccent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Detail',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600
                  ),
                ),
                // Thong tin gioi thieu ban than va an vao xem chi tiet
                Container(
                  child: GestureDetector(
                    onTap: () {},
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              child: Image.asset('images/icon_instagram.png'),
                            ),
                            TextButton(
                                onPressed: () {}, 
                                child: Text(profileModel.nameInstagram!)
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.home_filled, size: 22,),
                            SizedBox(width: 10,),
                            Text('Sống tại ${profileModel.address}', style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.favorite, size: 22,),
                            SizedBox(width: 10,),
                            Text(profileModel.relationship!, style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Container(
                              width: 18,
                              height: 18,
                              child: Image.asset('images/icon_network.png'),
                            ),
                            SizedBox(width: 15,),
                            Text('${profileModel.follower.toString()} người theo dõi', style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Icon(Icons.more_horiz_rounded, size: 22,),
                            SizedBox(width: 10,),
                            Text( 'Xem thông tin giới thiệu của bạn', style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              SizedBox(height: 20,),
              //   Button chinh sua thong tin ca nhan
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.lightBlueAccent,
                        // elevation: 5,// Do bong
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 35),
                      ),
                      child: Text(
                        'Edit public details',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12
                        ),)
                  ),
                ),
              ],
            ),
          ),

          // Danh sach bai viet
          ListView.builder(
            itemCount: posts.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return PostItem(post: posts[index]);
              }
          )
        ],
      ),
    );
  }
}
