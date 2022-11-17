import 'package:counter_7/main.dart';
import 'package:counter_7/dataBudget.dart';
import 'package:counter_7/tambahBudget.dart';
import 'package:flutter/material.dart';

class DrawerApplication extends StatelessWidget {
  const DrawerApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('Counter_7'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => TambahBudgetPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => DataBudgetPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
