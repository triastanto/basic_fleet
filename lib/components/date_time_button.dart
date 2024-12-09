import 'package:flutter/material.dart';

class DateTimeButton extends StatefulWidget {
  final String placeholder;

  const DateTimeButton({
    super.key,
    this.placeholder = 'Pilih Tanggal & Waktu', 
    });

  @override
  State<StatefulWidget> createState() => DateTimeButtonState();
}

class DateTimeButtonState extends State<DateTimeButton> {
  DateTime? dateTime;

  @override
  Widget build(BuildContext context) {
    final String displayText;
    
    if (dateTime != null) {
      final day = dateTime!.day.toString().padLeft(2, '0');
      final month = dateTime!.month.toString().padLeft(2, '0');
      final hours = dateTime!.hour.toString().padLeft(2, '0');
      final minutes = dateTime!.minute.toString().padLeft(2, '0');
      displayText = '$day/$month/${dateTime!.year} $hours:$minutes';
    } else {
      displayText = widget.placeholder;
    }

    return SizedBox(
      height: 25,
      child: ElevatedButton(
        onPressed: pickDateTime,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            displayText,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
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
      hour: dateTime?.hour ?? 0,
      minute: dateTime?.minute ?? 0,
    ),
  );

  Future pickDateTime() async {
    DateTime? date = await pickDate();
    if (date == null) return;

    TimeOfDay? time = await pickTime();
    if (time == null) return;

    final newDateTime = DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );

    setState(() => dateTime = newDateTime);
  }
}
