import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String name;
  
  const Header({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Halo, $name',
          style: const TextStyle(
            color: Color(0xFF080A24),
            fontSize: 18,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
        const Text(
          'SILAHKAN LAKUKAN PEMESANAN DISINI',
          style: TextStyle(
            color: Color(0xFF080A24),
            fontSize: 26,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
} 