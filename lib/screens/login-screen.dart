import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body: SingleChildScrollView(
      child: LoginFormWidget()
    ));
  }
}
