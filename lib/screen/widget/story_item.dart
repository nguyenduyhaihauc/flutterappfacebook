import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String imgUrl;
  final String userName;
  final String imgAvatar;
  final VoidCallback onTap;

  StoryItem({
    required this.imgUrl,
    required this.userName,
    required this.imgAvatar,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                // color: Colors.red,
                margin: EdgeInsets.only(left: 10),
                height: 170,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image:AssetImage(imgUrl),
                      fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
                  top: 10,
                  left: 14,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blueAccent,
                        width: 2
                      ),
                      image: DecorationImage(
                          image: AssetImage(imgAvatar),
                          fit: BoxFit.cover
                      )
                    ),
                  )
              ),
              Positioned(
                  bottom: 10,
                  left: 14,
                  child: Text(
                    userName,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                    ),
                  )
              )
            ],
          ),
        ],
      ),
    );
  }
}
