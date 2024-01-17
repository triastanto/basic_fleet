import 'package:flutter/material.dart';

import '../components/date_time_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

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
              children: const [
                Column(
                  children: [
                    Column(
                      children: [
                        DateTimeButton(),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Waktu pulang',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
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
}
