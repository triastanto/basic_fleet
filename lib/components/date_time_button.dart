import 'package:flutter/material.dart';

class DateTimeButton extends StatefulWidget {
  const DateTimeButton({super.key});

  @override
  State<StatefulWidget> createState() => DateTimeButtonState();
}

class DateTimeButtonState extends State<DateTimeButton> {
  DateTime dateTime = DateTime(2024, 01, 16, 5, 30);

  @override
  Widget build(BuildContext context) {
  final day = dateTime.day.toString().padLeft(2, '0');
  final month = dateTime.month.toString().padLeft(2, '0');
  final hours = dateTime.hour.toString().padLeft(2, '0');
  final minutes = dateTime.minute.toString().padLeft(2, '0');

    return ElevatedButton(
      onPressed: pickDateTime,
      child: Text(
        '$day/$month/${dateTime.year} $hours:$minutes',
      ),
    );
  }

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        firstDate: DateTime(2024),
        lastDate: DateTime(2025),
      );

  Future<TimeOfDay?> pickTime() => showTimePicker(
        context: context,
        initialTime: TimeOfDay(
          hour: dateTime.hour,
          minute: dateTime.minute,
        ),
      );

  Future pickDateTime() async {
    DateTime? date = await pickDate();
    if (date == null) return;

    TimeOfDay? time = await pickTime();
    if (time == null) return;

    final dateTime = DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );

    setState(() => this.dateTime = dateTime);
  }
}
