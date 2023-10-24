import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottom_nav extends StatefulWidget {
  const bottom_nav({super.key});

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  @override
  Widget build(BuildContext context) {
    return Container(
          color: Color.fromARGB(255, 3, 3, 3),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: GNav(
                tabBorderRadius: 16,
                tabShadow: [
                  BoxShadow(
                      color: const Color.fromARGB(255, 78, 78, 78)
                          .withOpacity(0.1))
                ],
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
                    icon: Icons.shopping_cart,
                    text: 'Cart',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  )
                ]),
          ),
        );
  }
}