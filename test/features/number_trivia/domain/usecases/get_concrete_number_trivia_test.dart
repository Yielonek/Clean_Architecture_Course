import 'package:clean_architecture_course/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_course/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_architecture_course/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_concrete_number_trivia_test.mocks.dart';


// class MockNumberTriviaRepository extends Mock
//     implements NumberTriviaRepository {}

@GenerateMocks([NumberTriviaRepository])
void main() {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository mockNumberTriviaRepository;

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  final testNumber = 1;
  final testNumberTrivia = NumberTrivia(number: 1, text: 'test trivia');

  test(
    'should get trivia for the number from the repo',
    () async {
      // arrange
      when(mockNumberTriviaRepository.getConcreteNumberTrivia(testNumber))
          .thenAnswer((_) async => Right(testNumberTrivia));

      // act
      final result = await usecase(Params(number: testNumber)); //we can use it instead of usecase.call(testNumber)

      //assert
      expect(result, Right(testNumberTrivia));

      verify(mockNumberTriviaRepository.getConcreteNumberTrivia(testNumber));
    },
  );
}