import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  LoginFormWidget({Key? key}) : super(key: key);

  GlobalKey _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    return Form(
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Login"))),
              SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Register")))
            ],
          ),
        ));
    ;
  }
}
