import 'package:chat/app/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(ChatScreen.routeName),
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
                    'Random Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vitae posuere justo, vel maximus ex. Donec vestibulum dapibus ex id rutrum. Donec sodales feugiat velit in faucibus. Maecenas accumsan dui nulla, congue pretium odio feugiat vitae. Praesent sed rhoncus nisl.',
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
              child: Text(
                '23m',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
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
