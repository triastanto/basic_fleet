import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  DateTime dateTime = DateTime(2024, 01, 16, 5, 30);

  @override
  Widget build(BuildContext context) {
    final hours = dateTime.hour.toString().padLeft(2, '0');
    final minutes = dateTime.minute.toString().padLeft(2, '0');

    TabController tabController = TabController(length: 2, vsync: this);
    return Container(
      color: const Color.fromARGB(2525, 240, 240, 240),
      padding: const EdgeInsets.all(35),
      child: Column(
        children: [
          const Text('Halo, Dian Eka Pratama'),
          const Text('SILAHKAN LAKUKAN PEMESANAN DISINI'),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
          TabBar(
            controller: tabController,
            tabs: const [
              Tab(text: "Sekali Jalan"),
              Tab(text: "Pulang Pergi"),
            ],
          ),
          SizedBox(
            width: double.maxFinite,
            height: 150,
            child: TabBarView(
              controller: tabController,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                final date = await pickDate();
                                if (date == null) return;
                                final newDateTime = DateTime(
                                  date.year,
                                  date.month,
                                  date.day,
                                  dateTime.hour,
                                  dateTime.minute,
                                );
                                setState(() => dateTime = newDateTime);
                              },
                              child: Text(
                                  '${dateTime.year}-${dateTime.month}-${dateTime.day}'),
                            ),
                            ElevatedButton(
                              onPressed: () async {
                                final time = await pickTime();
                                if (time == null) return;
                                final newDateTime = DateTime(
                                  dateTime.year,
                                  dateTime.month,
                                  dateTime.day,
                                  time.hour,
                                  time.minute,
                                );
                                setState(() => dateTime = newDateTime);
                              },
                              child:
                                  Text('$hours:$minutes'),
                            ),
                          ],
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Waktu pulang',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Waktu berangkat',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Titik penjemputan',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Destinasi Tujuan',
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Kirim Pemesanan',
              // style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        firstDate: dateTime,
        lastDate: DateTime(2025),
      );

  Future<TimeOfDay?> pickTime() => showTimePicker(
        context: context,
        initialTime: TimeOfDay(
          hour: dateTime.hour,
          minute: dateTime.minute,
        ),
      );
}
