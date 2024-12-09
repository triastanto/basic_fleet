import 'package:flutter/material.dart';
import 'single_trip_tab.dart';
import 'round_trip_tab.dart';
import 'tab_item.dart';

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
        PreferredSize(
          preferredSize: const Size.fromHeight(25),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            child: Container(
              height: 25,
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                color: const Color(0xFF525252).withOpacity(0.1),
              ),
              child: TabBar(
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicator: const BoxDecoration(
                  color: Color(0xFF525252),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black54,
                tabs: const [
                  TabItem(title: 'Pulang Pergi', count: 0),
                  TabItem(title: 'Sekali Jalan', count: 0),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 100,
          child: TabBarView(
            controller: tabController,
            children: const [
              RoundTripTab(),
              SingleTripTab(),
            ],
          ),
        ),
      ],
    );
  }
}
