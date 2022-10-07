import 'package:flutter/material.dart';
import 'package:my_flutter_app/provider/theme_provider.dart';
import 'package:my_flutter_app/screens/homepage-screen.dart';
import 'package:my_flutter_app/screens/login-screen.dart';
import 'package:my_flutter_app/screens/settings-screen.dart';
import 'package:my_flutter_app/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Builder(
          builder: (context) {
            final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: 'My Flutter App',
            //setting up default theme
            themeMode:themeProvider.themeMode,
            darkTheme: ThemeData(brightness: Brightness.dark),
            //theme: ThemeData.light(),
            home: const HomePage(),
            //initialRoute: MyRoutes.homePageRoute,
            routes: {
              MyRoutes.homePageRoute: (context) => const HomePage(),
              MyRoutes.loginRoute: (context) =>  LoginScreen(),
              MyRoutes.settingsPageRoute: (context) => const SettingsScreen()
            },
          );
        }
      ),
    );
  }
}
