import 'package:e_commerce/utlis/product_card.dart';
import 'package:flutter/material.dart';

import '../utlis/bottom_nav.dart';


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
          title: const  Text('Product'),
        ),
 
         //Body
        body: product_card(),

        //Bottom Navigation Bar
      // bottomNavigationBar: const bottom_nav(),

       
        );
        
        
        
  }

}
