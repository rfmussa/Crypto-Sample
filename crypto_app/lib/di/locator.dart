import 'package:crypto_app/data/remote/socket_remote_datasource.dart';
import 'package:crypto_app/data/remote/socket_service.dart';
import 'package:crypto_app/data/repository/socket_repository_impl.dart';
import 'package:crypto_app/domain/repositories/socket_repository.dart';
import 'package:crypto_app/ui/cubit/order_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void init() {
  //repo
  locator.registerFactory(() => RemoteDataSource(locator()));

  locator.registerLazySingleton<SocketRepository>(
      () => SocketRepositoryImpl(remoteDataSource: locator()));
  locator.registerLazySingleton<SocketService>(() => SocketService());

  //bloc
  locator.registerFactory(() => OrderCubit(locator()));
}
