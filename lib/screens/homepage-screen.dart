import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/login-screen.dart';
import 'package:my_flutter_app/screens/settings-screen.dart';
import 'package:my_flutter_app/widgets/animal_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [const AnimalListWidget(), LoginScreen(), const SettingsScreen()];
    final List<String> titleList = ["Homepage", "Login", "Settings"];


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:  Text(titleList[selectedIndex].toString()),
      ),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          //onTap will switch between bottom navigation items
          onTap: (index) => setState(() {
                selectedIndex = index;
              }),
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Login",
              icon: Icon(Icons.login),
            ),
            BottomNavigationBarItem(
              label: "Settings",
              icon: Icon(Icons.settings),
            )
          ]),
    );
  }
}
