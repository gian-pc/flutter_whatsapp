
import 'package:flutter/material.dart';
import 'package:flutter_codigo3_whatsapp/data/data_dummy.dart';
import 'package:flutter_codigo3_whatsapp/models/user_chat_model.dart';
import 'package:flutter_codigo3_whatsapp/widgets/item_chat_widget.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataListChat.length,
      itemBuilder: (BuildContext context, int index){
        UserChat user= dataListChat[index];
        return ItemChatWidget(userChat: user,);
      },
    );
  }
}


