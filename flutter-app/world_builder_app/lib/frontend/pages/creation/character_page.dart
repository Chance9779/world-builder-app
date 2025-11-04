import 'package:flutter/material.dart';
import 'widgets/common_page.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonPage(
      title: 'Create a Character',
      body: Center(child: Text('Character Creation Screen')),
    );
  }
}
