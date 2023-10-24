import 'package:e_commerce/model/apicalling.dart';
import 'package:flutter/material.dart';





class product_card extends StatefulWidget {
  const product_card({super.key});

  @override
  State<product_card> createState() => _product_cardState();
}

class _product_cardState extends State<product_card> {

 
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                    itemCount: 8,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Stack(
      children: [

        // Image 
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      productApi[index].image),
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
            '${productApi[index].title}',maxLines: 1,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 249, 248, 248),
                ),
          ),
        ),
      ],
    );
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            });
  }
}
