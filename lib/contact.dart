import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  final String name;

  const Contact({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
    );
  }
}
