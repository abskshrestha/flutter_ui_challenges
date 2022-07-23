import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:providerexampleapp/providers/counter_provider.dart';
import 'package:providerexampleapp/providers/shopping_cart_provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example App ${context.watch<Counter>().count}'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${context.watch<ShoppingCart>().count}'),
            Text('${context.watch<ShoppingCart>().cart}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('addItem_floatingActionButton'),
        tooltip: 'Add Item',
        onPressed: () => context.read<ShoppingCart>().addItem('Bread'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
