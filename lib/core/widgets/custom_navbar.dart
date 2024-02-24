import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:spacewise/screens/booking_screen.dart';
import 'package:spacewise/screens/complaint_screen.dart';
import 'package:spacewise/screens/home_screen.dart';
import 'package:spacewise/screens/reports_screen.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int _selectedIndex = 0;
  static const List<Widget> screens = [
    HomeScreen(),
    BookingScreen(),
    ReportsScren(),
    ComplaintScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: screens.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: GNav(
              haptic: true,
              rippleColor: HexColor("61479E"),
              hoverColor: HexColor("61479E"),
              gap: 6,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: HexColor("EBE5F5"),
              color: HexColor("61479E"),
              tabs: const [
                GButton(
                  icon: Icons.space_dashboard_rounded,
                  text: "Dashboard",
                ),
                GButton(
                  icon: Icons.search,
                  text: "Bookings",
                ),
                GButton(
                  icon: Icons.summarize_rounded,
                  text: "Report",
                ),
                GButton(
                  icon: Icons.note_alt_rounded,
                  text: "Complaint",
                )
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    ));
  }
}
