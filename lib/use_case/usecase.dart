import 'package:dartz/dartz.dart';
import 'package:movie_api/core/error_handle.dart';

abstract class UseCase<Type, Params> {
  Future<Either<ErrorHandle, Type>> call(String path,Params params);
}
