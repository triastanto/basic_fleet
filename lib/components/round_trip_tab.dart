import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'date_time_button.dart';

class RoundTripTab extends StatelessWidget {
  const RoundTripTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
          borderRadius: BorderRadius.circular(9),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SvgPicture.asset('assets/icons/clock.svg'),
          ),
          const Expanded(
            child: Column(
              children: [
                Expanded(child: DateTimeButton()),
                Divider(height: 1, color: Color(0xFFD9D9D9)),
                Expanded(child: DateTimeButton()),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 