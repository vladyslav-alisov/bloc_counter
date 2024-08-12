import 'package:counter_bloc/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitIncDecPage extends StatelessWidget {
  const CubitIncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    var counterBloc = BlocProvider.of<CounterCubit>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            OutlinedButton(
              key: const Key("increment"),
              onPressed: () {
                counterBloc.increment();
              },
              child: const Icon(Icons.add),
            ),
            OutlinedButton(
              key: const Key("decrement"),
              onPressed: () {
                counterBloc.decrement();
              },
              child: const Icon(Icons.minimize),
            ),
          ],
        ),
      ),
    );
  }
}
