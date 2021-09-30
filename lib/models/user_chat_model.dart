class UserChat {
  String nameUser;
  String time;
  String avatarUrl;
  String message;
  int countMessage;
  bool isWriting;

  UserChat({
    required this.nameUser,
    required this.time,
    required this.avatarUrl,
    required this.message,
    required this.countMessage,
    required this.isWriting
  });
}