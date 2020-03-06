import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:state_notifier_sample/counter/counter.dart';

class CounterNotifier extends StateNotifier<Counter> {
  CounterNotifier() : super(const Counter(counter: 0));

  void increment() {
    state = Counter(counter: state.counter + 1);
  }
}

void main() {
  runApp(
    StateNotifierProvider<CounterNotifier, Counter>(
      create: (_) => CounterNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            context.select((Counter state) => state.counter).toString(),
            style: Theme.of(context).textTheme.headline,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: context.watch<CounterNotifier>().increment,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
