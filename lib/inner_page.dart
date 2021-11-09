import 'package:flutter/material.dart';
import 'package:flutter_sharepreferences/contact.dart';
import 'package:flutter_sharepreferences/sign_page.dart';

class InnerPage extends StatelessWidget {
  const InnerPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Title(color: Colors.white, child: Text("CrossRoads"))),
            ListTile(
              title: Text("Sign out"),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return signPage(
                    singout: true,
                  );
                }));
              },
            )
          ],
        ),
      ),
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
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
