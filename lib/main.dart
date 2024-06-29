import 'package:flutter/material.dart';

void main() {
  runApp(const HelloWorld());
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(title: "Hi this is the first flutter app"),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _Home();
}

class _Home extends State<Home> {
  int _count = 0;

  void increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("First App")),
        body: Center(
          child: Text("Hello, you clicked the button $_count times"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increment,
          child: const Icon(Icons.thumb_up),
        ),
      ),
    );
  }
}
