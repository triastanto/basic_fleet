import 'package:flutter/material.dart';
import 'single_trip_tab.dart';
import 'round_trip_tab.dart';

class TripTabs extends StatelessWidget {
  final TabController tabController;

  const TripTabs({
    super.key,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: tabController,
          tabs: const [
            Tab(text: "Sekali Jalan"),
            Tab(text: "Pulang Pergi"),
          ],
        ),
        SizedBox(
          height: 100,
          child: TabBarView(
            controller: tabController,
            children: const [
              SingleTripTab(),
              RoundTripTab(),
            ],
          ),
        ),
      ],
    );
  }
} 