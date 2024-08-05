import 'package:flutter/material.dart';

class HelloWordScreen extends StatefulWidget {
  const HelloWordScreen({super.key});

  @override
  State<HelloWordScreen> createState() => _HelloWordScreenState();
}

class _HelloWordScreenState extends State<HelloWordScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("HELLO WORLD"),
      ),
    );
  }
}
