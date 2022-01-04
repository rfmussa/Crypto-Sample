import 'package:dartz/dartz.dart';
import 'package:crypto_app/core/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
