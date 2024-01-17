import 'package:flutter/material.dart';

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
          Container(
            child: TabBar(
              controller: tabController,
              tabs: [
                Tab(text: "Sekali Jalan"),
                Tab(text: "Pulang Pergi"),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(
              controller: tabController,
              children: [
                Text("sekali jalan content"),
                Text("pulang pergi content"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
