import 'package:flutter/material.dart';
import 'widgets/main_menu_button.dart';
import 'character_page.dart';
import 'location_page.dart';
import 'map_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _navigateTo(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainMenuButton(
              label: 'Create a Character',
              icon: Icons.person_add,
              onPressed: () => _navigateTo(context, const CharacterPage()),
            ),
            const SizedBox(height: 16),
            MainMenuButton(
              label: 'Create a Location',
              icon: Icons.location_city,
              onPressed: () => _navigateTo(context, const LocationPage()),
            ),
            const SizedBox(height: 16),
            MainMenuButton(
              label: 'Maps',
              icon: Icons.map,
              onPressed: () => _navigateTo(context, const MapPage()),
            ),
          ],
        ),
      ),
    );
  }
}
