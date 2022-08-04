import 'package:dartz/dartz.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';


class SignIn extends UseCase<List<UserEntity>, NoParams> {
  final UserRepository userRepository;

  SignIn(this.userRepository);
  @override
  Future<Either<Failure, List<UserEntity>>> call(params) async {
    return await userRepository.signIn();
  }
}
