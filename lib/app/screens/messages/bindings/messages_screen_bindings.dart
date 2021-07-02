part of messages_screen;

class MessagesScreenBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MessagesScreenController>(() => MessagesScreenController());
  }
}