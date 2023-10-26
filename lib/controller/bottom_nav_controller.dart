import 'package:e_commerce/screen/cart_screen.dart';
import 'package:e_commerce/screen/home_page.dart';
import 'package:e_commerce/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/state_manager.dart';

class BottomNavigationBarController extends GetxController{
  
 RxInt index = 0.obs;

 var pages = [

  home_screen(),
  cart_screen(),
  profile_screen(),

 ];
}