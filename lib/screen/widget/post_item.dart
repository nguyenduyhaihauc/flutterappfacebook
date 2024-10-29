import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/post_model.dart';

class PostItem extends StatelessWidget {
  final PostModel post;

  PostItem({required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 370,
      // color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: Colors.grey,
          ),
          SizedBox(height: 10,),
        //   Header bai viet (avatar, ten nguoi dung, dia diem)
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(post.userAvatar),
                radius: 20,
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        post.userName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                      SizedBox(width: 5,),
                      if (post.status != null)
                      Text(
                        post.status!,
                        style: TextStyle(
                          color: Colors.black
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        post.time,
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        post.location,
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 10,),

        //   Noi dung bai viet
          if (post.text != null) Text(post.text!),

        //   Hien thi hinh anh bai viet (mot hoac nhieu)
        //   ...[ ] - Toan tu 'spread' cho phep them 1 ds Widget vao 1 ds
          if (post.images != null) ...[
            SizedBox(height: 10,),
            post.images!.length == 1
              ? Container(
                height: 180,
                child: Image.asset(
                  post.images![0],
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
            ) //Hien thi 1 hinh anh
              : GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4
                ),
                itemCount: post.images!.length,
                itemBuilder: (context, index) {
                  return Image.asset(post.images![index]);
                }
            )
          ],

        //   Hien thi video
          if (post.video != null) ...[
            SizedBox(height: 10,),
          //   Gia lap video bang container
            Container(
              height: 200,
              color: Colors.black26,
              alignment: Alignment.center,
              child: Icon(Icons.play_circle_fill, size: 50, color: Colors.white,),
            )
          ],

          // Thich va binh luan
          Container(
            height: 16,
            margin: EdgeInsets.symmetric(vertical: 5),
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
                    Text(post.like, style: TextStyle(
                      fontSize: 12
                    ),)
                  ],
                ),
                Text('${post.comment} comment', style: TextStyle(
                  fontSize: 13
                ),)
              ],
            ),
          ),

          //   Cac nut tuong tac
          Container(
            height: 22,
            margin: EdgeInsets.only(top: 10, bottom: 5),
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
        ],
      ),
    );
  }
}
