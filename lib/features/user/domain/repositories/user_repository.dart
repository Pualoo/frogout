import 'package:dartz/dartz.dart';
import 'package:frogout/features/user/domain/entities/user_entity.dart';
import '../../../../core/error/failures.dart';

abstract class UserRepository {
  Future<Either<Failure, List<UserEntity>>> signIn();
}
