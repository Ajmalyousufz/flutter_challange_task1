import 'package:flutter/material.dart';
import 'package:flutter_sharepreferences/contact.dart';

class InnerPage extends StatelessWidget {
  const InnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text("Contact $index"),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return Contact(name: "$index");
                    }));
                  },
                );
              },
              separatorBuilder: (ctx, index) {
                return Divider(
                  color: Colors.lightBlue,
                );
              },
              itemCount: 30)),
    );
  }
}
