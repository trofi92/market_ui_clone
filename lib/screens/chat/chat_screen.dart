import 'package:flutter/material.dart';
import 'package:market_ui_clone/models/chat_message.dart';
import 'package:market_ui_clone/screens/chat/chat_container.dart';
import 'package:market_ui_clone/screens/components/appBar_prefreed_size.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("채팅"),
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }
}
