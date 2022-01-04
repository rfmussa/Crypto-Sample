import 'package:crypto_app/data/socket_result.dart';

abstract class SocketRepository {
  Future<void> openConnection();
  Future<void> closeConnection();
  Stream<SocketResult> subscribe(String channelID);

}
