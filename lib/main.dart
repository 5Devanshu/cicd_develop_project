import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized
  await Firebase.initializeApp(  // Initialize Firebase before running the app
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp()); // Now run the app
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
