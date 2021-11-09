import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class signPage extends StatelessWidget {
  signPage({Key? key}) : super(key: key);
  final textcontrol1 = TextEditingController();
  final textcontrol2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
}
