import 'package:crypto_app/domain/repositories/socket_repository.dart';
import 'package:mocktail/mocktail.dart';
// import 'package:flutter_architecture/domain/login/repositories/login_repository.dart';
// import 'package:flutter_architecture/domain/login/use_cases/login_usecases.dart';


class SocketRepoMock extends Mock implements SocketRepository {}

class FutureCallbackMock extends Mock implements Function {
  Future<void> call();
}
