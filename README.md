# Chat

Flutter chat

Flutter + SocketIO

## A donde se conecta?
En `Main.dart linea 6` declaramos la conexion, dominio y puerto.

```dart
SocketIOWrapper('127.0.0.1', 5000, onConnect: () => print('[IO] Connected'));
```
## Backend
[Simple Backned](https://github.com/ushieru/chat-server)