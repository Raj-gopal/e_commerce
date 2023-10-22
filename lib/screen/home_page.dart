import 'package:e_commerce/utlis/product_card.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Align(alignment: Alignment.topLeft, child: Text('Home')),
        ),

        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 3, 3, 3),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: GNav(
                tabBorderRadius: 16,
                tabShadow: [BoxShadow(color: const Color.fromARGB(255, 78, 78, 78).withOpacity(0.1))],
                color: Colors.grey[800], // unselected icon color
                activeColor: const Color.fromARGB(255, 253, 252, 253),
                iconSize: 20, // tab button icon size
                textSize: 20,
                backgroundColor: Color.fromARGB(255, 3, 3, 3),
                tabBackgroundColor:
                    Color.fromARGB(255, 54, 54, 54).withOpacity(0.6),
                gap: 8,
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',),

                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ) 
                ]),
          ),
        ));
  }
}
