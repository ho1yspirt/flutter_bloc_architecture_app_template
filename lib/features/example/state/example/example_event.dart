part of 'example_bloc.dart';

@immutable
abstract class ExampleEvent {}

class DoExampleEvent extends ExampleEvent {
  DoExampleEvent({required this.model});
  final ExampleRequestModel model;
}
