import 'package:flutter/material.dart';

class termsCondPage extends StatefulWidget {
  const termsCondPage({super.key});

  @override
  State<termsCondPage> createState() => _termsCondPageState();
}

class _termsCondPageState extends State<termsCondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.only(top: 70, left: 20),
        child: const Text(
          'Hello',
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
      ),
    );
  }
}
