import 'package:chat/app/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatRow extends StatelessWidget {
  final String userName;

  const ChatRow({Key? key, required this.userName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(ChatScreen.routeName, arguments: userName),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        width: double.maxFinite,
        height: 80,
        child: Row(
          children: [
            ClipOval(
              child: Container(
                width: 60,
                height: 60,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            SizedBox(width: 15),
            Align(
              alignment: Alignment.topRight,
              child: ClipOval(
                child: Container(
                  height: 10,
                  width: 10,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade300),
          ),
        ),
      ),
    );
  }
}
