// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class NumberTrivia extends Equatable {
  const NumberTrivia({
    required this.text,
    required this.number,
  });

  final String text;
  final int number;

  @override
  List<Object?> get props => [
        text,
        number,
      ];
}
