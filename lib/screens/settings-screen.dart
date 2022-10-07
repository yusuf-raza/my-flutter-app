import 'package:flutter/material.dart';
import 'package:my_flutter_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      //: AppBar(title: Text("Settings"),),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sunny,
              size: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Switch(
                value: themeProvider.isLightMode,
                onChanged: (value) {
                  themeProvider.toggleTheme(value);
                })
          ],
        )),
      ),
    );
  }
}
