import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cart.dart';
import 'package:flutter_application_1/screens/home_screen.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
   int _selectedIndex = 0; 

   
  final List<Widget> _screens = [ 
    home(),
    Cart(),
   
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; 
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
         body: _screens[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex, 
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped, 
      ),
    );
  }
}