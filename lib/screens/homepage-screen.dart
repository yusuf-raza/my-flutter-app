import 'package:flutter/material.dart';
import 'package:my_flutter_app/provider/bottom_nav_index_provider.dart';
import 'package:my_flutter_app/screens/login-screen.dart';
import 'package:my_flutter_app/screens/settings-screen.dart';
import 'package:my_flutter_app/widgets/animal_list_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //bottom nav bar tabs
    final tabs = [
      const AnimalListWidget(),
      LoginScreen(),
      const SettingsScreen()
    ];
    //titles for selected bottom nav bar
    final List<String> titleList = ["Homepage", "Login", "Settings"];

    //bottom nav bar index provider
    final navigationIndexProvider =
        Provider.of<BottomNavigationIndexProvider>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(titleList[navigationIndexProvider.currentIndex].toString()),
      ),
      body: tabs[navigationIndexProvider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: navigationIndexProvider.currentIndex,
          elevation: 0,
          onTap: (index) {
            navigationIndexProvider.updateScreenIndex(index);
          },
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
