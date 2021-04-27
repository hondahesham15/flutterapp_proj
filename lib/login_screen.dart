import 'package:flutter/material.dart';
import 'package:flutter_app/items_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Morning"),
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(hintText: "Username"),
          ),
          TextFormField(
            decoration: InputDecoration(hintText: "Password"),
          ),
          RaisedButton(
            child: Text("Login"),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ItemsScreen();
                  },
                ),
              );
            },
            color: Colors.blue,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
