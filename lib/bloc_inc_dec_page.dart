import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocIncDecPage extends StatelessWidget {
  const BlocIncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    var counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedButton(
              key: const Key("increment"),
              onPressed: () {
                counterBloc.add(CounterIncremented());
              },
              child: const Icon(Icons.add),
            ),
            OutlinedButton(
              key: const Key("decrement"),
              onPressed: () {
                counterBloc.add(CounterDecremented());
              },
              child: const Icon(Icons.minimize),
            ),
          ],
        ),
      ),
    );
  }
}
