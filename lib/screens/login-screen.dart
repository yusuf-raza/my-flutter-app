import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
          title: Text("Login"),
        ),*/
        body: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Email"),
                    icon: Icon(Icons.email),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text("Password"),
                    icon: Icon(Icons.password),
                  ),
                ),
                ElevatedButton(onPressed: (){}, child: Text("login"))
              ],
            )));
  }
}
