import 'package:flutter/material.dart';
import 'package:chat/context/messages/message.dart' as Domain;

class Message extends StatelessWidget {
  final Domain.Message message;

  const Message({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: 10),
      alignment: message.isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(maxWidth: width * .6),
        padding: const EdgeInsets.all(10),
        child: Text(
          message.message,
          style: TextStyle(
            color: message.isMine ? Colors.white : Colors.black87,
          ),
        ),
        decoration: BoxDecoration(
          color: message.isMine ? Colors.blue : Colors.grey.shade300,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: message.isMine ? Radius.zero : Radius.circular(10),
            bottomLeft: message.isMine ? Radius.circular(10) : Radius.zero,
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
