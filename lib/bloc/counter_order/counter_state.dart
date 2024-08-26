part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

class CounterInitial extends CounterState {}

class CounterValuoChengeState extends CounterState {
  final int counter;


  CounterValuoChengeState({required this.counter});


}
