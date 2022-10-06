import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/homepage-screen.dart';
import 'package:my_flutter_app/screens/login-screen.dart';
import 'package:my_flutter_app/screens/settings-screen.dart';
import 'package:my_flutter_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      //setting up default theme
      theme: ThemeData.light(),
      home: const HomePage(),
      //initialRoute: MyRoutes.homePageRoute,
      routes: {
        MyRoutes.homePageRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) =>  LoginScreen(),
        MyRoutes.settingsPageRoute: (context) => const SettingsScreen()
      },
    );
  }
}
