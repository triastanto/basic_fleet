import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String name;
  
  const Header({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Halo, $name',
          style: theme.textTheme.displayMedium,
        ),
        Text(
          'SILAHKAN LAKUKAN PEMESANAN DISINI',
          style: theme.textTheme.displayLarge,
        ),
      ],
    );
  }
} 