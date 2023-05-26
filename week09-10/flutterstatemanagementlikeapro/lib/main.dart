import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Create a simple counter model
class CounterModel extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterModel>(
      create: (context) => CounterModel(),
      child: MaterialApp(
        title: 'Flutter State Management',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<CounterModel>(
              builder: (context, counter, child) {
                return Text(
                  'Count: ${counter.count}',
                  style: TextStyle(fontSize: 24),
                );
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Provider.of<CounterModel>(context, listen: false).increment();
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
