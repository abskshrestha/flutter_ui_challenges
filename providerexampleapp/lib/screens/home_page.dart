import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App ${context.watch<Counter>().count}'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'You have clicked the button this many times: ${context.watch<Counter>().count}'),
            Count(),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/second'),
              child: Text('Launch Screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key('decrement_floatingActionButton'),
            tooltip: 'Decrement',
            onPressed: () => context.read<Counter>().decrement(),
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 5,
          ),
          FloatingActionButton(
            key: const Key('reset_floatingActionButton'),
            tooltip: 'Reset',
            onPressed: () => context.read<Counter>().reset,
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(
            width: 5,
          ),
          FloatingActionButton(
            key: const Key('increment_floatingActionButton'),
            tooltip: 'Decrement',
            onPressed: () => context.read<Counter>().increment(),
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      key: Key('counterState'),
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
