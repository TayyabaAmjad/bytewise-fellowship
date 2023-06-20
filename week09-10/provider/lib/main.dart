
import 'dart:async';
//import 'package:intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage2(),
    );
  }
}

final valueProvider = Provider<int>((ref) {
  return 36;
});
final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

class MyHomePage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    //final value = watch(valueProvider);
    final counter = watch(counterStateProvider);
    return ProviderListener<StateController<int>>(
      provider: counterStateProvider,
      onChange: (context,counterState){
        ScaffoldMessenger.of(context).showSnackBar(
            snackBar(context:Text('value is ${counterState.state}')),
        );
      },
      body: Center(
        child: Text(
          'Value: ${counter.state}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read(counterStateProvider).state++,
        child: Icon(Icons.add),
      ),
    );
  }
}
class Clock extends StateNotifier<DateTime>{
  Clock():super(DateTime.now()){
    _timer = Timer.periodic(Duration(seconds:1),(_){
      state=DateTime.now();
    });
  }
  late final Timer _timer;
  @override
  void dispose(){
    _timer.cancel();
    super.dispose();
  }
}
final clockProvider = StateNotifierProvider<Clock>((ref){
return Clock();
});
class MyHomePage2 extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      body: Center(
        child: Text(
          'Show me the time',
          style: Theme
              .of(context)
              .textTheme
              .headline4,
        ),
      ),
    );
  }
}