import 'package:createdifferentblocs/views/Blocs/Counter_Bloc/counte_bloc.dart';
import 'package:createdifferentblocs/views/Blocs/Theme_Bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, required String title});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: Icon(Icons.brightness_6),
              onPressed: () {
                context.read<ThemeBlocBloc>().add(Toggletheme());
              },
            )
          ],
        ),
        body: BlocListener<CounterBloc, CounterBlocState>(
          listener: (context, state) {
            final counterValue = (state as CounterValue).counter;
            if (counterValue == 5) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Counter reached 5!'),
                  duration: Duration(seconds: 2),
                ),
              );
            }
          },
          child: Center(
            child: BlocBuilder<CounterBloc, CounterBlocState>(
              builder: (context, state) {
                final counter = (state as CounterValue).counter;
                return Text(
                  'Counter Value: $counter ',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
          ),
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecrementCounter());
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(IncrementCounter());
            },
            child: Icon(Icons.add),
          ),
        ])
        );
  }
}
