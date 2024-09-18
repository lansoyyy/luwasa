import 'package:alert_system/screens/auth/login_screen.dart';
import 'package:alert_system/screens/tabs/home_tab.dart';
import 'package:alert_system/screens/tabs/notif_tab.dart';
import 'package:alert_system/screens/tabs/profile_tab.dart';
import 'package:alert_system/screens/tabs/transaction_tab.dart';
import 'package:alert_system/widgets/logout_widget.dart';
import 'package:alert_system/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeTab(),
    const TransactionTab(),
    const NotifTab(),
    const ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List labels = [
    'Home',
    'Transactions',
    'Notifications',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        title: TextWidget(
          text: 'LUWASA Water Billing',
          fontSize: 18,
          color: Colors.white,
          fontFamily: 'Bold',
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: 'Transactions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
