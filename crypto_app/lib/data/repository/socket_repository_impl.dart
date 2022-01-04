import 'package:crypto_app/data/remote/socket_remote_datasource.dart';
import 'package:crypto_app/data/socket_result.dart';
import 'package:crypto_app/domain/repositories/socket_repository.dart';

class SocketRepositoryImpl implements SocketRepository {
  final RemoteDataSource remoteDataSource;

  SocketRepositoryImpl({required this.remoteDataSource});

  @override
  Future<void> closeConnection() async {
    remoteDataSource.closeConnection();
  }

  @override
  Future<void> openConnection() async {
    await remoteDataSource.openConnection();
  }

  @override
  Stream<SocketResult> subscribe(String channelID) {
    return remoteDataSource.subscribe();
  }
}
