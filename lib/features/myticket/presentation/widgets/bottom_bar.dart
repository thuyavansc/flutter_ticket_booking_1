import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/pages/home/home_screen.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/pages/search/search_screen.dart';

import '../pages/profile/profile_screen.dart';
import '../pages/ticket/ticket_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetoptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
      print('Tapped Item index : ${index}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('My Tickets'),
      //   backgroundColor: Colors.blue,
      // ),
      backgroundColor: Colors.white54,
      body: Center(child: _widgetoptions[_selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: 'Home',),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: 'Search',),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: 'Ticket',),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: 'Profile',),
        ],
        selectedItemColor: Colors.green[400],
        unselectedItemColor: Colors.green[600],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
