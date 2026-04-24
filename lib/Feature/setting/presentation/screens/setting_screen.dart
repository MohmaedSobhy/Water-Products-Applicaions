import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          Center(child: Text("Setting Screen")),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: const Icon(Icons.language),
              title: const Text("Language"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Handle language change
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Handle language change
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.security),
              title: const Text("Update Password"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Handle language change
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.view_agenda),
              title: const Text("Theme"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Handle language change
                // show Bottom Sheet Dialoge
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Logout"),
              onTap: () {
                // Handle language change
              },
            ),
          ),
        ],
      ),
    );
  }
}
