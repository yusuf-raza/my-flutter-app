import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                      image: AssetImage("assets/images/login.png"),
                      fit: BoxFit.cover,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Email"),
                        icon: Icon(Icons.email),
                      ),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Password"),
                        icon: Icon(Icons.password),
                      ),
                    ),
                    ElevatedButton(onPressed: () {}, child: const Text("login"))
                  ],
                ),
              )),
        ));
  }
}
