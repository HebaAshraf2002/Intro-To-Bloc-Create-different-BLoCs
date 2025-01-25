import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBloc() : super(CounterValue(0)) {
    on<CounterBlocEvent>((event, emit) {
      final currentState = state as CounterValue;
      if (event is IncrementCounter) {
        emit(CounterValue(currentState.counter + 1));
      }
      if (event is DecrementCounter) {
        emit(CounterValue(currentState.counter - 1));
      }
    });
  }
}
