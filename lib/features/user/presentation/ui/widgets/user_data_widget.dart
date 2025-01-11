import 'package:flutter/material.dart';

class UserDataWidget extends StatelessWidget {
  const UserDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ListTile(
          leading: Icon(Icons.person),
          iconColor: Colors.blueAccent,
          title: Text('cleands sdsa'),
        ),
        ListTile(
          leading: const Icon(Icons.email),
          iconColor: Colors.blueAccent,
          title: Text('cleands sdsa'),
        ),
        ListTile(
          leading: const Icon(Icons.phone),
          iconColor: Colors.blueAccent,
          title: Text('cleands sdsa'),
        ),
        ListTile(
         leading: const Icon(Icons.location_city),
          iconColor: Colors.blueAccent,
          title: Text('cleands sdsa'),
        ),
      ],
    );
  }
}
