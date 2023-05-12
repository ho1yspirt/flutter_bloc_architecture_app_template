// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:flutter_bloc_architecture_app_template/features/example/example.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc({required this.repo}) : super(ExampleInitial()) {
    on<DoExampleEvent>((event, emit) async {
      emit(ExampleLoading());
      final model = await repo.doExampleRequest(
        model: event.model,
      );
      try {
        emit(ExampleSuccess(model: model));
      } catch (e) {
        emit(ExampleError(model: model));
      }
    });
  }
  final ExampleRepo repo;
}
