import 'package:flutter/material.dart';

class cart_screen extends StatefulWidget {
  const cart_screen({super.key});

  @override
  State<cart_screen> createState() => _cart_screenState();
}

class _cart_screenState extends State<cart_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          // Card 1

          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D'),
                    ),
                    title: Text('Boat Rockerz 551'),
                    subtitle: Text('Wireless Over Ear Headphones'),
                    trailing: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          ),

          //Card 2

          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D'),
                    ),
                    title: Text('Boat Rockerz 551'),
                    subtitle: Text('Wireless Over Ear Headphones'),
                    trailing: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          ),

          //card 3
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D'),
                    ),
                    title: Text('Boat Rockerz 551'),
                    subtitle: Text('Wireless Over Ear Headphones'),
                    trailing: Icon(Icons.delete),
                  ),
                ],
              ),
            ),
          ),

          // Button

          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.center,
                width: 400,
                height: 56,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 247, 70, 70),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 214, 214, 214),
                     blurRadius: 10,
                     spreadRadius: 5,
                      offset: Offset(
                        0,
                        6,
                      ),
                    )
                  ],
                ),
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
