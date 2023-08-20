import 'package:contacts/screens/contact_list.dart';
import 'package:contacts/screens/favorite.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _navigate(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [const ContactList(), const FavoriteContacts()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Color(0xff262A30),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 18),
          child: GNav(
              tabBackgroundColor: Color(0xff40455B),
              activeColor: Colors.white,
              padding: const EdgeInsets.all(12),
              gap: 20,
              color: Colors.white,
              backgroundColor: Color(0xff262A30),
              selectedIndex: _selectedIndex,
              onTabChange: _navigate,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Contacts',
                ),
                GButton(
                  icon: Icons.star_border_outlined,
                  text: 'Favorites',
                ),
              ]),
        ),
      ),
    );
  }
}
