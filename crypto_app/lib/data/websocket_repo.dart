import 'package:web_socket_channel/web_socket_channel.dart';

abstract class IWebSocketRepo {
  WebSocketChannel openConnection(String url);

  closeConnection(WebSocketChannel channel);
}

class SocketRepo implements IWebSocketRepo {
  @override
  closeConnection(WebSocketChannel channel) {
    channel.sink.close();
  }

  @override
  WebSocketChannel openConnection(String url) {
    return WebSocketChannel.connect(Uri.parse(url));
  }
}
