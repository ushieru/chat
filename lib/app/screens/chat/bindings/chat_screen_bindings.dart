part of chat_screen;

class ChatScreenBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ChatScreenController>(() => ChatScreenController());
  }
}