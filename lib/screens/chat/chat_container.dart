import 'package:flutter/material.dart';
import 'package:market_ui_clone/models/chat_message.dart';
import 'package:market_ui_clone/screens/components/image_container.dart';
import 'package:market_ui_clone/theme.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;
  const ChatContainer({super.key, required this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            ImageContainer(
              imageUrl: chatMessage.profileImage,
              width: 50,
              height: 50,
              borderRadius: 25,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: chatMessage.sender,
                            style: textTheme().bodyLarge),
                        TextSpan(text: ' ${chatMessage.location}'),
                        TextSpan(text: ' * ${chatMessage.sendDate}'),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    chatMessage.message,
                    style: textTheme().bodySmall,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                ],
              ),
            ),
            Visibility(
              visible: chatMessage.imageUrl != null,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ImageContainer(
                    width: 50,
                    height: 50,
                    borderRadius: 10,
                    imageUrl: chatMessage.imageUrl ?? '',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
