part of 'example_bloc.dart';

@immutable
abstract class ExampleState {}

class ExampleInitial extends ExampleState {}

class ExampleLoading extends ExampleState {}

class ExampleSuccess extends ExampleState {
  ExampleSuccess({required this.model});
  final ExampleResponseModel model;
}

class ExampleError extends ExampleState {
  ExampleError({required this.model});
  final ExampleErrorModel model;
}
