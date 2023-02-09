import 'package:flutter/material.dart';
import 'package:flutter_preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const routerName = 'Settings';

  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  int gender = 1;
  String name = 'Karlos';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: const SideMenu(),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Ajustes',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
            ),
            const Divider(),
            SwitchListTile.adaptive(
                value: isDarkMode,
                title: const Text('Dark Mode'),
                onChanged: (value) {
                  isDarkMode = value;
                  setState(() {});
                }),
            const Divider(),
            RadioListTile(
                value: 1,
                groupValue: gender,
                title: const Text('Masculino'),
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                }),
            const Divider(),
            RadioListTile(
                value: 2,
                groupValue: gender,
                title: const Text('Femenino'),
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                }),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'Karlos',
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
                decoration: const InputDecoration(
                    labelText: 'Nombre', helperText: 'Nombre del usuario'),
              ),
            )
          ]),
        ));
  }
}
