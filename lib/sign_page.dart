import 'package:flutter/material.dart';
import 'package:flutter_sharepreferences/inner_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class signPage extends StatelessWidget {
  final textcontrol1 = TextEditingController();
  final textcontrol2 = TextEditingController();
  final bool singout;

  signPage({Key? key, required this.singout}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (singout == false) {
      getSavedData(context);
    }
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("User Name : "),
              TextFormField(controller: textcontrol1),
              Text("Passwored : "),
              TextFormField(controller: textcontrol2),
              ElevatedButton(
                  onPressed: () {
                    saveDataToStorage();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return InnerPage();
                    }));
                  },
                  child: Text("Submit"))
            ],
          ),
        ),
      )),
    );
  }

  Future<void> saveDataToStorage() async {
    print(textcontrol1.text);
    print(textcontrol2.text);
    //shared_preferenes
    final sharedPrens = await SharedPreferences.getInstance();
    sharedPrens.setString("saved_username", textcontrol1.text);
    sharedPrens.setString("saved_password", textcontrol2.text);
  }

  Future<void> getSavedData(BuildContext context) async {
    final sharedprefs = await SharedPreferences.getInstance();
    final username = sharedprefs.getString('saved_username');
    final password = sharedprefs.getString('saved_password');
    if ((username != null) && (password != null)) {
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
        return InnerPage();
      }));
    }
  }
}
