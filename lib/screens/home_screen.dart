import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/header.dart';
import '../components/agenda_input.dart';
import '../components/trip_tabs.dart';
import '../components/location_input.dart';
import '../components/submit_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const ShapeDecoration(
          color: Color(0xFFF0F0F0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(99)),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/order_a_car.svg',
                  fit: BoxFit.contain,
                  width: 300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Header(name: 'Dian Eka Pratama'),
                  const SizedBox(height: 16),
                  const AgendaInput(),
                  const SizedBox(height: 16),
                  TripTabs(tabController: _tabController),
                  const SizedBox(height: 16),
                  const LocationInput(
                    hintText: 'Titik Penjemputan',
                    iconPath: 'assets/icons/location.svg',
                  ),
                  const SizedBox(height: 16),
                  const LocationInput(
                    hintText: 'Destinasi Tujuan',
                    iconPath: 'assets/icons/circle.svg',
                  ),
                  const SizedBox(height: 16),
                  SubmitButton(onPressed: () {
                    // Handle button press
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
