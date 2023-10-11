import 'package:flutter/material.dart';
import 'package:pactics_1/Container/team.dart';

class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Fokrul.jpeg')),
            accountName: Text(
              'Fokrul Islam',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            accountEmail: Text('islamfokrul2002@gmail.com'),
          ),
          ListTile(
            title: const Text('About Me'),
            leading: const Icon(
              Icons.person_sharp,
            ),
            iconColor: Colors.purple,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Team(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
