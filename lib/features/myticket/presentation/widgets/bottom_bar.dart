import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking_1/features/myticket/presentation/pages/home/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetoptions = <Widget>[
    const HomeScreen(),
    const Text('Search-Widget'),
    const Text('Ticket-Widget'),
    const Text('Profile-Widget'),
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search',),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: 'Ticket',),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile',),
        ],
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.green[600],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
