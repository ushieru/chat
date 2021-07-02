library welcome_screen;

import 'package:chat/app/screens/messages/messages_screen.dart';
import 'package:chat/context/socketio_wraper/socket_io_wrapper.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

part './controllers/welcome_screen_controller.dart';
part 'bindings/welcome_screen_bindings.dart';

class WelcomeScreen extends GetResponsiveView<WelcomeScreenController> {
  static final String routeName = 'WelcomeScreen';

  WelcomeScreen() : super(alwaysUseBuilder: false);

  @override
  Widget phone() {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to chat application!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                controller: controller.userNameController,
                decoration: InputDecoration(hintText: 'Username'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: controller.setUserName,
                child: Text('Join'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
