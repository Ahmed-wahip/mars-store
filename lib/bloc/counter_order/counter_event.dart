part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrmentEvent extends CounterEvent {}

