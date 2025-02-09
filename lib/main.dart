import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override   
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CI/CD App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter CI/CD App'),
      ),
      body: const Center(
        child: Text(
          'Hello, CI/CD!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

