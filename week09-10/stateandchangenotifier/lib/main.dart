import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

  final ValueNotifier<int> valueNotifier = ValueNotifier(0);
  final numberChangeNotifier = NumberChangeNotifier();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter State Management',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'ValueNotifier Count: ${valueNotifier.value}',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  valueNotifier.value++;
                },
                child: const Text('Increment (ValueNotifier)'),
              ),
              const SizedBox(height: 24),
              Text(
                'ChangeNotifier Count: ${numberChangeNotifier.count}',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  numberChangeNotifier.increment();
                },
                child: const Text('Increment (ChangeNotifier)'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NumberChangeNotifier extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
