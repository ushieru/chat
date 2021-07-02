part of chat_screen;

class ChatScreenController extends GetxController {
  TextEditingController messageController = TextEditingController();
  RxList<Domain.Message> messages = <Domain.Message>[].obs;
  RxString userNameTarget = ''.obs;

  ChatScreenController(){
    this.userNameTarget.value = Get.arguments;
    SocketIOWrapper.getMessage(_getMessage);
  }

  void sendMessage() {
    this.messages.add(Domain.Message(true, this.messageController.text));
    SocketIOWrapper.sendMessage(this.userNameTarget.value, this.messageController.text);
    this.messageController.text = '';
  }

  void _getMessage(String message){
    this.messages.add(Domain.Message(false, message));
  }
}
