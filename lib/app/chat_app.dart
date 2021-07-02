import 'package:chat/app/screens/chat/chat_screen.dart';
import 'package:chat/app/screens/messages/messages_screen.dart';
import 'package:chat/app/screens/welcome/welcome_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Chat App',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: WelcomeScreen.routeName,
          page: () => WelcomeScreen(),
          binding: WelcomeScreenBindings(),
        ),
        GetPage(
          name: MessagesScreen.routeName,
          page: () => MessagesScreen(),
          binding: MessagesScreenBindings(),
        ),
        GetPage(
          name: ChatScreen.routeName,
          page: () => ChatScreen(),
          binding: ChatScreenBindings(),
        ),
      ],
      initialRoute: WelcomeScreen.routeName,
    );
  }
}
