import 'package:create_app_flavor/flavors.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final Flavor flavor;

  const MyApp({required this.flavor, super.key});

  @override
  Widget build(BuildContext context) {
    FlavorValues.initialize(flavor);

    return MaterialApp(
        title: FlavorValues.nameApp,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), useMaterial3: true),
        home: MyHomePage(title: FlavorValues.nameApp));
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() => setState(() => _counter++);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: Text(widget.title)),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          const Text('You have pushed the button this many times:'),
          Text('$_counter', style: Theme.of(context).textTheme.headlineMedium)
        ])),
        floatingActionButton:
            FloatingActionButton(onPressed: _incrementCounter, tooltip: 'Increment', child: const Icon(Icons.add)));
  }
}
