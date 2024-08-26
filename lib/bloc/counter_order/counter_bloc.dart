import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_event.dart';
part 'counter_state.dart';

CounterBloc counterBloc = CounterBloc();

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 1;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementEvent) {
        counter = counter + 1;

        emit(CounterValuoChengeState(counter: counter));
      } else if (event is DecrmentEvent) {
        counter = counter - 1;

        emit(CounterValuoChengeState(counter: counter));
      } else {
        counter = 1;
        emit(CounterValuoChengeState(counter: counter));
      }
    });
  }
}
