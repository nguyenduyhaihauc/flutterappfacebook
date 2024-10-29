import 'dart:async';

import 'package:flutter/material.dart';

class StoryDetailScreen extends StatefulWidget {
  final String imageUrl;
  final String userName;
  final String imgAvatar;

  StoryDetailScreen({
    required this.imageUrl,
    required this.userName,
    required this.imgAvatar
  });

  @override
  _StoryDetailScreenState createState() => _StoryDetailScreenState();
}

class _StoryDetailScreenState extends State<StoryDetailScreen> {

  late Timer _timer;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();

  //   tu dong chuyen sang tin  tiep theo
  //   Timer.periodic tao ra ham Timer ma cu 100 milliseconds goi lai ham ben trong
    _timer = Timer.periodic(Duration(milliseconds: 100), (Timer timer) {
      setState(() {
        _progress += 0.01; //Moi lan chay se l 1/10s tuong duong voi 100 milliseconds
        // Kiem tra neu chay >= 1s thí dung lai
        if (_progress >= 1.0) {
          _timer.cancel(); //Ket thuc Timer
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              widget.imageUrl,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Positioned(
              top: 30,
              left: 10,
              right: 10,
              child: Column(
                children: [
                  LinearProgressIndicator(
                    value: _progress, //Thanh thoi gian
                    backgroundColor: Color(0x11000000),
                    color: Colors.white, //Mau thoi gian chay
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Boc chung ben duoi thanh thoi gian
                  Container(
                    height: 35,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Anh dai dien, userName and time dang bai
                        Row(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(widget.imgAvatar),
                                    fit: BoxFit.cover
                                )
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text(
                              widget.userName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              '3 h',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                        // Icon Cancel va Icon more
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                    Icons.more_horiz_rounded,
                                    size: 20,
                                    color: Colors.white,
                                )
                            ),
                            SizedBox(width: 5,),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 20,
                                  width: 20,
                                  child: Image.asset('images/icon_cancel.png')
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
          ),
          Positioned(
              bottom: 20,
              left: 15,
              right: 15,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Nhap binh luan
                    Container(
                      height: 40,
                      width: 230,
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Gửi tin nhắn ",
                          hintStyle: TextStyle(
                            color: Colors.white70
                          )
                        ),
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/icon_tym.png')
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/icon_like.png')
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/icon_laugh.png')
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/icon_love.png')
                      ),
                    ),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset('images/icon_sad.png')
                      ),
                    ),
                    SizedBox(width: 6,),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 38,
                          width: 38,
                          // color: Colors.red,
                          child: Image.asset('images/icon_angry.png')
                      ),
                    )
                  ],
                ),
              ),
          )
        ],
      ),
    );
  }
}
