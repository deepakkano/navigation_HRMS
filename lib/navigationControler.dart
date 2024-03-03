// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nav/homepage.dart';
import 'package:nav/password.dart';
import 'package:nav/profile.dart';
import 'package:nav/setting.dart';

class NavigationControler extends StatefulWidget {
  const NavigationControler({super.key});

  @override
  State<NavigationControler> createState() => _NavigationControlerState();
}

class _NavigationControlerState extends State<NavigationControler> {
  int _selectedIndex=0;
  List _screens=[HomePage(),Password(),Setting(),Profile()];
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
   bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
              setState(() {
_selectedIndex=index;

    });
        },
                currentIndex: _selectedIndex,

          type: BottomNavigationBarType.fixed,
           selectedItemColor: Colors.blue.shade400,
        items: [
         BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_sharp), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.password_outlined), label: "Password"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
           BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
        
      ),

    );
  }
}