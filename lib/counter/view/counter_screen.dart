import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter_bloc/counter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterBloc, CounterState>(
      listener: (context, state) {
        if (state is CounterErrorState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error)));
        }
      },
      builder: (context, state) {
        int count = context.read<CounterBloc>().count;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Counter Screen'),
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(DecrementCounterValue());
                    },
                    child: const Icon(Icons.remove)),
                Text(
                  count.toString(),
                  style: const TextStyle(fontSize: 22),
                ),
                FloatingActionButton(
                    onPressed: () {
                      context.read<CounterBloc>().add(IncrementCounterValue());
                    },
                    child: const Icon(Icons.add)),
              ],
            ),
          ),
        );
      },
    );
  }
}
