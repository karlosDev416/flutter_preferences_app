import 'package:flutter/material.dart';
import 'package:flutter_preferences_app/shared_preferences/preferences.dart';
import 'package:flutter_preferences_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const routerName = 'Home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('isDarkMode: ${Preferences.isDarkMode}'),
        const Divider(),
        Text('Género: ${Preferences.gender}'),
        const Divider(),
        Text('Nombre de usuario: ${Preferences.name}'),
        const Divider(),
      ]),
    );
  }
}
