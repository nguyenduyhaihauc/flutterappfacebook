import 'package:flutter/material.dart';
import 'package:flutterappfacebook/data/model/dropdown_model.dart';
import 'package:flutterappfacebook/screen/widget/dropdown_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  bool showAll = false;

  // List item to display
  List<Map<String, dynamic>> items = [
    {'image': 'images/icon_time_clock.png', 'text': 'Kỷ niệm'},
    {'image': 'images/icon_saved.png', 'text': 'Đã lưu'},
    {'image': 'images/icon_group.png', 'text': 'Nhóm'},
    {'image': 'images/icon_video.png', 'text': 'Video'},
    {'image': 'images/icon_marketplace.png', 'text': 'Marketplace'},
    {'image': 'images/icon_friends.png', 'text': 'Bạn bè'},
    {'image': 'images/icon_feed.png', 'text': 'Bảng feed'},
    {'image': 'images/icon_dating.png', 'text': 'Hẹn hò'},
    {'image': 'images/icon_avatar.png', 'text': 'Avatar'},
    {'image': 'images/icon_play_game.png', 'text': 'Chơi game'},
    {'image': 'images/icon_tag.png', 'text': 'Lướt thấy'},
    {'image': 'images/icon_reels.png', 'text': 'Reels'},
    {'image': 'images/icon_box.png', 'text': 'Sinh nhật'},
    {'image': 'images/icon_event.png', 'text': 'Sự kiện'},
  ];

  void _handleButtonPress(String text) {
    switch (text) {
      case 'Kỷ niệm':
        print('Ky niem da duoc nhan');
        break;
      case 'Đã lưu':
        print('Da luu da duoc nhan');
        break;
      case 'Nhóm':
        print('Nhom da duoc nhan');
        break;
      case 'Video':
        print('Video da duoc nhan');
        break;
      case 'Marketplace':
        print('Marketplace da duoc nhan');
        break;
      case 'Bạn bè':
        print('Ban be da duoc nhan');
        break;
      case 'Bảng feed':
        print('Bang feed da duoc nhan');
        break;
      case 'Hẹn hò':
        print('Hen ho da duoc nhan');
        break;
      case 'Avatar':
        print('Avatar da duoc nhan');
        break;
      case 'Chơi game':
        print('Choi game da duoc nhan');
        break;
      case 'Lướt thấy':
        print('Luot thay da duoc nhan');
        break;
      case 'Reels':
        print('Reels da duoc nhan');
        break;
      case 'Sinh nhật':
        print('Sinh nhat da duoc nhan');
        break;
      case 'Sự kiện':
        print('Su kien da duoc nhan');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> displayedItems =
    showAll ? items : items.sublist(0, 6);

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
                  'Menus',
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

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  'Shorctus',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87
                ),
              )
          ),
        // Cac nut chuc nang
          Container(
            margin: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 15),
            child: GridView.builder(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 3,
                  mainAxisExtent: 70
                ),
                itemCount: displayedItems.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: GestureDetector(
                      onTap: () => _handleButtonPress(displayedItems[index]['text']),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(displayedItems[index]['image'], width: 24, height: 24,),
                          SizedBox(height: 5,),
                          Text(displayedItems[index]['text'], style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87
                          ),)
                        ],
                      ),
                    ),
                  );
                }
            ),
          ),
          // Nut xem them
          SizedBox(
            width: double.infinity,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      showAll = !showAll;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.black87,
                    // elevation: 5,// Do bong
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 35),
                  ),
                  child: Text(showAll ? 'Ẩn bớt' : 'Xem thêm', style: TextStyle(fontWeight: FontWeight.w600),)
              ),
            ),
          ),

          Divider(color: Colors.grey[200],),
        //   Tro giup va ho tro
          DropdownWidget(
              title: "Trợ giúp & hỗ trợ",
              image: 'images/icon_question.png',
              items: [
                DropdownModel(
                    image: 'images/icon_center.png',
                    text: 'Trung tâm hỗ trợ',
                    onTap: () {}
                ),
                DropdownModel(
                    image: 'images/icon_mailbox.png',
                    text: 'Hộp thư hỗ trợ',
                    onTap: () {}
                ),
                DropdownModel(
                    image: 'images/icon_warning.png',
                    text: 'Báo cá sự cố',
                    onTap: () {}
                ),
                DropdownModel(
                    image: 'images/icon_security.png',
                    text: 'An toàn',
                    onTap: () {}
                ),
                DropdownModel(
                    image: 'images/icon_term.png',
                    text: 'Điều khoản & chính sách',
                    onTap: () {}
                )
              ]
          ),

          Divider(color: Colors.grey[200],),
        //   Cai dat va quyen rieng tu
          DropdownWidget(
              title: 'Cài đặt & quyền riêng tư',
              image: 'images/icon_setting.png',
              items: [
                DropdownModel(
                    image: 'images/icon_person.png',
                    text: 'Cài đặt',
                    onTap: () {}
                ),
                DropdownModel(
                    image: 'images/icon_privacy.png',
                    text: 'Trung tâm quyền riêng tư',
                    onTap: () {}
                ),
                DropdownModel(
                    image: 'images/icon_link.png',
                    text: 'Lịch sử và liên kết',
                    onTap: () {}
                )
              ]
          ),

        //   Nut dang xuat
          SizedBox(
            width: double.infinity,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    foregroundColor: Colors.black87,
                    // elevation: 5,// Do bong
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 35),
                  ),
                  child: Text('Đăng xuất', style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black87
                  ),)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
