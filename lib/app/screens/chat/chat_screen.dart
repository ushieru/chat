library chat_screen;

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
            
          ],
        ),
      ),
    );
  }
}
