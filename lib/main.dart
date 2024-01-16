import 'package:flutter/material.dart';

import 'basic_fleet_theme.dart';
import 'home.dart';

void main() {
  runApp(const BasicFleet());
}

class BasicFleet extends StatelessWidget {
  const BasicFleet({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = BasicFleetTheme.light();
    return MaterialApp(
      title: 'Basic Fleet',
      theme: theme,
      home: const Home(),
    );
  }
}
