
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:e_commerce/screen/spalsh_screen.dart';
import 'package:e_commerce/utlis/bottom_nav.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 0, 0)),
        useMaterial3: true,
      ),
      home:  FlutterSplashScreen(
          useImmersiveMode: true,
          duration: const Duration(seconds: 8),
          nextScreen: bottom_nav(),
          splashScreenBody: const FirstScreen(),
        ),
      ) ; 
  
  }
}
