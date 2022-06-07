import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<IncrementCounterValue>(_mapIncrementCounterValueEventToState);
    on<DecrementCounterValue>(_mapDecrementCounterValueEventToState);
  }

  int count = 0;

  FutureOr<void> _mapIncrementCounterValueEventToState(
      IncrementCounterValue event, Emitter<CounterState> emit) {
    count++;
    emit(CounterSucessState());
  }

  FutureOr<void> _mapDecrementCounterValueEventToState(
      DecrementCounterValue event, Emitter<CounterState> emit) {
    if (count > 0) {
      count--;
      emit(CounterSucessState());
    } else {
      emit(CounterErrorState('Counter cannot be negative'));
    }
  }
}
