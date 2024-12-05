import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AgendaInput extends StatelessWidget {
  const AgendaInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Agenda Perjalanan',
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8),
            child: SvgPicture.asset('assets/icons/agenda.svg'),
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    );
  }
} 