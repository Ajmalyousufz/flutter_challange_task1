import 'package:flutter/material.dart';

class InnerPage extends StatelessWidget {
  const InnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
    );
  }
}
