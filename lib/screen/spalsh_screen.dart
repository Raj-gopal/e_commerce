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


        // Text  
         Center(
          child: RichText(
            text: const TextSpan(
              text: 'We will deliver your favorite food in 30 minutes',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,),
            ),
          ),
        ),
        
      ],
    ));
  }
}
