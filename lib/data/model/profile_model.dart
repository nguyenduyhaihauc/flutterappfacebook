

class ProfileModel {
  final String backgroundUrl;
  final String avatarUrl;
  final String userName;
  final int friends;
  final String? nameInstagram;
  final String? address;
  final String? relationship;
  final int? follower;
  final String? numberPhone;
  final String? sex;
  final String? birthday;

  ProfileModel({
    required this.backgroundUrl,
    required this.avatarUrl,
    required this.userName,
    required this.friends,
    this.nameInstagram,
    this.address,
    this.relationship,
    this.follower,
    this.numberPhone,
    this.sex,
    this.birthday
  });
}