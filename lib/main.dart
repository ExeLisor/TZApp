import 'package:flutter/material.dart';
import 'package:tzapp/core/services/service_locator.dart';

void main() async {
  await setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {},
        ),
        body: Center(
          child: Text('post.title'),
        ),
      ),
    );
  }
}
