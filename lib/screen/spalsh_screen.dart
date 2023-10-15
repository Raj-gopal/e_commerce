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
              'assets/gif/splash-min.gif',
              fit: BoxFit.fitHeight,
              frameRate: 30,
            ),
          ),

          // Container box
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
              height: 300,
              width: 1000,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 11, 11, 11).withOpacity(.9),
                borderRadius: BorderRadius.circular(16),
              ),

              // Text and ElevatedButton
              child: Column(
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'E-commerce',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(width: 200),
                        ),
                        TextSpan(
                          text:
                              '\nWe will deliver your favorite food in 30 minutes',
                          style: TextStyle(
                            color: Color.fromARGB(255, 92, 92, 92),
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color.fromARGB(255, 0, 0, 0),
                        backgroundColor: Color.fromARGB(255, 245, 245, 245),
                        elevation: 12.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      child: const Text('Next'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
