import 'package:flutter/material.dart';
import 'package:gif_view/gif_view.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // gif
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: GifView.asset(
            'assests/gif/splash-min.gif',
            fit: BoxFit.fitHeight,
            frameRate: 30, // default is 15 FPS
          ),
        ),

        // Container box
         Align(
              alignment: Alignment.bottomCenter,
              child:Container(
                padding: EdgeInsets.symmetric(horizontal:32),
              height: 400,
              width: 1000 ,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 11, 11, 11).withOpacity(.9),
                borderRadius: BorderRadius.circular(16),
              
              ),
              child:Center(
                child: RichText(
                  
                  text: const TextSpan(
                    text: 'E-commerce',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                 
                   children:<TextSpan>[TextSpan(
                    text: '\nWe will deliver your favorite food in 30 minutes',
                    style: TextStyle(
                      color: Color.fromARGB(255, 92, 92, 92),
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  ],
                ),
              ),  
             
         
            ),
         ),
         ),
      ],
    ));
  }
}
