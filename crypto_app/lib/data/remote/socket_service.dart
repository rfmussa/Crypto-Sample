import 'package:web_socket_channel/web_socket_channel.dart';

const socketURL = 'wss://futures.kraken.com/ws/v1';
const subscribeMessage =
    '{"event": "subscribe", "feed": "book", "product_ids": ["PI_XBTUSD"]}';

abstract class ISocketService {
  WebSocketChannel openConnection();

  closeConnection();

  Stream<dynamic> subscribeToFeed();
}

class SocketService implements ISocketService {
  late WebSocketChannel _channel;

  @override
  closeConnection() {
    _channel.sink.close();
  }

  @override
  WebSocketChannel openConnection() {
    _channel = WebSocketChannel.connect(Uri.parse(socketURL));
    return _channel;
  }

  @override
  Stream<dynamic> subscribeToFeed() {
    print("== Socket Service Subscribe Feed ==");
    _channel.sink.add(subscribeMessage);
    return _channel.stream;
  }
}
