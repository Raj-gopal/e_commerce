import 'package:e_commerce/controller/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottom_nav extends StatefulWidget {
  const bottom_nav({super.key});

  @override
  State<bottom_nav> createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  BottomNavigationBarController controller =
      Get.put(BottomNavigationBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
          tabBorderRadius: 16,
          color: Colors.grey[800], // unselected icon color
          activeColor: const Color.fromARGB(255, 253, 252, 253),
          iconSize: 20, // tab button icon size
          textSize: 20,
          backgroundColor: Color.fromARGB(255, 3, 3, 3),
          tabBackgroundColor: Color.fromARGB(255, 54, 54, 54).withOpacity(0.6),
          gap: 8,
          onTabChange: (value) {
            controller.index.value = value;
          },
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
           body: Obx(() => controller.pages[controller.index.value]),
    );
  }
}
