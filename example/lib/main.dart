import 'package:flutter/material.dart';
import 'package:r_strings/r_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RandomStringExample(),
    );
  }
}

class RandomStringExample extends StatefulWidget {
  const RandomStringExample({super.key});

  @override
  _RandomStringExampleState createState() => _RandomStringExampleState();
}

class _RandomStringExampleState extends State<RandomStringExample> {
  String _randomString = 'Tap the button to generate a string';

  void _generateRandomString() {
    setState(() {
      _randomString = RStrings.generate(10);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random String Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _randomString,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _generateRandomString,
              child: const Text('Generate Random String'),
            ),
          ],
        ),
      ),
    );
  }
}
