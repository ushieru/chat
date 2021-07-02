import 'package:chat/app/chat_app.dart';
import 'package:chat/context/socketio_wraper/socket_io_wrapper.dart';
import 'package:flutter/material.dart';

void main() {
  SocketIOWrapper('192.168.100.3', 5000, onConnect: () => print('[IO] Connected'));
  runApp(ChatApp());
}
