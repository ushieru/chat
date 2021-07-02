part of chat_screen;

class ChatScreenController extends GetxController {
  TextEditingController messageController = TextEditingController();
  RxList<Domain.Message> messages = <Domain.Message>[].obs;

  ChatScreenController() {
    this.messages.add(Domain.Message(false, 'Hey! What\'s up?'));
    this.messages.add(Domain.Message(true, 'Hello bro!'));
  }

  void sendMessage() {
    this.messages.add(Domain.Message(true, this.messageController.text));
    this.messageController.text = '';
  }
}
