import 'package:flutter/material.dart';

class product_card extends StatefulWidget {
  const product_card({super.key});

  @override
  State<product_card> createState() => _product_cardState();
}

class _product_cardState extends State<product_card> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        // Image 
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1682687219570-4c596363fd96?auto=format&fit=crop&q=80&w=2750&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  fit: BoxFit.cover)),
        ),


        // Container
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 32,
            color: Colors.black.withOpacity(.6),
          ),
        ),


        //Text
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "Goggle",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 249, 248, 248),
                ),
          ),
        ),
      ],
    );
  }
}
