import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_with_bloc/counter/counter.dart';

import '../utils/app_observer.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const CounterApplication()),
      blocObserver: AppBlocObserver());
}
