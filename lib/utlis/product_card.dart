import 'package:flutter/material.dart';

class product_card extends StatefulWidget {
  const product_card({super.key});

  @override
  State<product_card> createState() => _product_cardState();
}

class _product_cardState extends State<product_card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
           // padding: const EdgeInsets.symmetric(vertical: 8),
           // height: MediaQuery.of(context).size.height ,
           // width: MediaQuery.of(context).size.width ,
            child: Image.network(
              'https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=1780',
            ),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
