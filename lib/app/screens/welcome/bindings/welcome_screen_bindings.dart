part of welcome_screen;

class WelcomeScreenBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<WelcomeScreenController>(() => WelcomeScreenController());
  }
}