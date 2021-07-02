library messages_screen;

import 'package:chat/app/widgets/chat_row.dart';
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
              Text(
                'Messages',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView(
                  children: [
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                    ChatRow(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
