part of messages_screen;

class MessagesScreenController extends GetxController {
  RxList<String> userOnline = <String>[].obs;

  MessagesScreenController() {
    SocketIOWrapper.onUserOnline((userName) {
      if (SocketIOWrapper.userName != userName) if (!userOnline
          .contains(userName)) userOnline.add(userName);
    });
  }

  void getOnlineUsers() {
    SocketIOWrapper.getOnlineUsers();
  }
}
