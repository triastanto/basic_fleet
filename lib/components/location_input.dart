import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationInput extends StatelessWidget {
  final String hintText;
  final String iconPath;

  const LocationInput({
    super.key,
    required this.hintText,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 55,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: theme.textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset(iconPath),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }
} 