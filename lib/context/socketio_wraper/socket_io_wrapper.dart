import 'package:socket_io_client/socket_io_client.dart';

class SocketIOWrapper {
  static late Socket socket;
  static String userName = '';

  SocketIOWrapper(String domain, int port, {void Function()? onConnect}) {
    SocketIOWrapper.socket = io('http://$domain:$port/',
        OptionBuilder().setTransports(['websocket']).build());
    SocketIOWrapper.socket.onConnect((_) {
      if (onConnect != null) onConnect();
    });
  }

  static setUserName(String userName) {
    SocketIOWrapper.userName = userName;
    socket.emit('signin', userName);
  }

  static getOnlineUsers() {
    socket.emit('getOnlineUsers', SocketIOWrapper.userName);
  }

  static onUserOnline(void Function(String) onUserOnlineCallback) {
    socket.on('userOnline', (data) {
      onUserOnlineCallback(data);
    });
  }

  static getMessage(void Function(String) getMessageCallback) {
    socket.on('message', (data) {
      getMessageCallback(data);
    });
  }

  static sendMessage(String target, String message) {
    socket.emit('message', '{"target":"$target", "message":"$message"}');
  }
}
