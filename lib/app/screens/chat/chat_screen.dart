library chat_screen;

import 'package:chat/app/widgets/in_chat_header.dart';
import 'package:chat/app/widgets/message.dart';
import 'package:chat/context/messages/message.dart' as Domain;
import 'package:chat/context/socketio_wraper/socket_io_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

part './controllers/chat_screen_controller.dart';
part 'bindings/chat_screen_bindings.dart';

class ChatScreen extends GetResponsiveView<ChatScreenController> {
  static final String routeName = 'ChatScreen';

  ChatScreen() : super(alwaysUseBuilder: false);

  @override
  Widget phone() {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Obx(() => InChatHeader(name: controller.userNameTarget.value)),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Obx(
                  () => ListView(
                    children: List.generate(
                      controller.messages.length,
                      (index) => Message(
                        message: controller.messages[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      minLines: 1,
                      maxLines: 3,
                      controller: controller.messageController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: controller.sendMessage,
                    icon: Icon(
                      Icons.send,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
