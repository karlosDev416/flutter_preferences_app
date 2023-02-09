import 'package:flutter/material.dart';
import 'package:flutter_preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static const routerName = 'Settings';

  const SettingsScreen({super.key});
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
                value: true, title: Text('Dark Mode'), onChanged: (value) {}),
            const Divider(),
            RadioListTile(
                value: 1,
                groupValue: 1,
                title: const Text('Masculino'),
                onChanged: (value) {}),
            const Divider(),
            RadioListTile(
                value: 2,
                groupValue: 1,
                title: const Text('Femenino'),
                onChanged: (value) {}),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: 'Karlos',
                decoration: const InputDecoration(
                    labelText: 'Nombre', helperText: 'Nombre del usuario'),
              ),
            )
          ]),
        ));
  }
}
