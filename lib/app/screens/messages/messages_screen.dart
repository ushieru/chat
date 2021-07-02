library messages_screen;

import 'package:chat/app/widgets/chat_row.dart';
import 'package:chat/context/socketio_wraper/socket_io_wrapper.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

part './controllers/messages_screen_controller.dart';
part 'bindings/messages_screen_bindings.dart';

class MessagesScreen extends GetResponsiveView<MessagesScreenController> {
  static final String routeName = 'MessagesScreen';

  MessagesScreen() : super(alwaysUseBuilder: false);

  @override
  Widget phone() {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Messages',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: controller.getOnlineUsers,
                    icon: Icon(Icons.update),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: Obx(
                  () => ListView(
                    children: List.generate(
                      controller.userOnline.length,
                      (index) => ChatRow(
                        userName: controller.userOnline[index],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
