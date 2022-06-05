part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterSucessState extends CounterState {}

class CounterErrorState extends CounterState {
  final String error;

  CounterErrorState(this.error);
}
