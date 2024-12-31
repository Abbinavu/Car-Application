import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Notifications'),
            trailing: Switch(value: true, onChanged: (bool value) {}),
          ),
          ListTile(
            title: Text('Privacy'),
            onTap: () {
              // Handle navigation to privacy settings
            },
          ),
          ListTile(
            title: Text('Terms & Conditions'),
            onTap: () {
              // Handle navigation to terms & conditions
            },
          ),
        ],
      ),
    );
  }
}
