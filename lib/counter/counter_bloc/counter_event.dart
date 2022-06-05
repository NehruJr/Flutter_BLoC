part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncrementCounterValue extends CounterEvent {}

class DecrementCounterValue extends CounterEvent {}
