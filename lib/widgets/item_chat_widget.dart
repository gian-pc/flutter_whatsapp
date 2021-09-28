import 'package:flutter/material.dart';
import 'package:flutter_codigo3_whatsapp/models/user_chat_model.dart';

class ItemChatWidget extends StatelessWidget {
  UserChat userChat;

  ItemChatWidget({required this.userChat});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.black26.withOpacity(0.07),
              backgroundImage: NetworkImage(userChat.avatarUrl)),
          title: Text(
            userChat.nameUser,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
          ),
          subtitle: !userChat.isWriting
              ? Text(userChat.message)
              : Text(
                  "escribiendo...",
                  style: TextStyle(
                      color: Theme.of(context).accentColor,
                      fontWeight: FontWeight.w600),
                ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                userChat.time,
                style: TextStyle(
                  color: userChat.countMessage == 0
                      ? Colors.black45
                      : Theme.of(context).accentColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              userChat.countMessage!=0?CircleAvatar(
                radius: 11,
                backgroundColor: Theme.of(context).accentColor,
                child: Text(
                  userChat.countMessage.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ):Container(
                height: 0,
                width: 0,
              ),
            ],
          ),
        ),
        Container(
          child: Divider(
            height: 10,
            thickness: 0.5,
          ),
        ),
      ],
    );
  }
}
