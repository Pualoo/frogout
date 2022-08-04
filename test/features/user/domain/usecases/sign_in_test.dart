import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frogout/core/domain/usecases/usecase.dart';
import 'package:frogout/core/error/failures.dart';
import 'package:frogout/features/user/domain/entities/user_entity.dart';
import 'package:frogout/features/user/domain/repositories/user_repository.dart';
import 'package:frogout/features/user/domain/usecases/sign_in.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'sign_in_test.mocks.dart';

@GenerateMocks([UserRepository])
void main() {
  late SignIn usecase;
  late MockUserRepository mockUserRepository;

  setUp(() {
    mockUserRepository = MockUserRepository();
    usecase = SignIn(mockUserRepository);
  });

  final mockedUser = [
    const UserEntity(id: "1", name: "Example")
  ];

  test(
    'should sign in successful and return the user from the repository',
    () async {
      when(mockUserRepository.signIn())
          .thenAnswer((_) async => Right(mockedUser));

      final result = await usecase(NoParams());

      expect(result, Right(mockedUser));
      verify(mockUserRepository.signIn());
      verifyNoMoreInteractions(mockUserRepository);
    },
  );

  test(
    'should sign in failure and return server failure from the repository',
    () async {
      when(mockUserRepository.signIn())
          .thenAnswer((_) async => Left(ServerFailure()));

      final result = await usecase(NoParams());

      expect(result, Left(ServerFailure()));
      verify(mockUserRepository.signIn());
      verifyNoMoreInteractions(mockUserRepository);
    },
  );

  test(
    'should sign in failure and return network failure from the repository',
    () async {
      when(mockUserRepository.signIn())
          .thenAnswer((_) async => Left(NetworkFailure()));
      
      final result = await usecase(NoParams());

      expect(result, Left(NetworkFailure()));
      verify(mockUserRepository.signIn());
      verifyNoMoreInteractions(mockUserRepository);
    },
  );
}
