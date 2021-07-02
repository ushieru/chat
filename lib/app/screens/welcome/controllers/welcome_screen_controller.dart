part of welcome_screen;

class WelcomeScreenController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  void setUserName() {
    SocketIOWrapper.setUserName(userNameController.text);
    Get.offNamedUntil(MessagesScreen.routeName, (route) => false);
  }
}
