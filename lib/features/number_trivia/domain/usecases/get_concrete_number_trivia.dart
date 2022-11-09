import 'package:clean_architecture_course/core/error/failures.dart';
import 'package:clean_architecture_course/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../entities/number_trivia.dart';

class GetConcreteNumberTrivia {
  const GetConcreteNumberTrivia({this.repository});
  final NumberTriviaRepository? repository;

  Future<Either<Failure?, NumberTrivia?>?> execute(
      {required int number}) async {
    return await repository?.getConcreteNumberTrivia(number);
  }
}
