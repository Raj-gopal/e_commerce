import 'package:e_commerce/utlis/product_card.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utlis/bottom_nav.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //App Bar
        appBar: AppBar(
          title: Text('Home'),
        ),

        //Bottom Navigation Bar
        bottomNavigationBar: bottom_nav(),

        //Body
        body: GridView.builder(
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
            itemBuilder: (context, index) {
              return product_card();
            }));
  }
}
