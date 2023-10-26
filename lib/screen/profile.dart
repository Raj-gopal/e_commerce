import 'package:flutter/material.dart';
import 'package:image_card/image_card.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({super.key});

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Container(
        height: 740,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fHww'))),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Rajgopal Kumar',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Text(
              'Rajganj,Dhanbad',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),

            // Order and Wishlist Button

            Padding(
              padding: EdgeInsets.only(top: 32, left: 40, bottom: 16),
              child: Row(
                children: [
                  Container(
                    height: 48,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color.fromARGB(255, 89, 89, 89).withOpacity(.05),
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 238, 238, 238)
                              .withOpacity(.6),
                        )
                      ],
                    ),
                    child: Center(
                        child: Text(
                      'Orders',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    )),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Container(
                    height: 48,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color.fromARGB(255, 89, 89, 89).withOpacity(.05),
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 238, 238, 238)
                              .withOpacity(.6),
                        )
                      ],
                    ),
                    child: Center(
                        child: Text(
                      'Wishlist',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    )),
                  ),
                ],
              ),
            ),

            //insider and coupon button

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Container(
                    height: 48,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color.fromARGB(255, 89, 89, 89).withOpacity(.05),
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 238, 238, 238)
                              .withOpacity(.6),
                        )
                      ],
                    ),
                    child: Center(
                        child: Text(
                      'Insider',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    )),
                  ),
                  SizedBox(
                    width: 32,
                  ),
                  Container(
                    height: 48,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Color.fromARGB(255, 89, 89, 89).withOpacity(.05),
                        width: 1.0,
                        style: BorderStyle.solid,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 238, 238, 238)
                              .withOpacity(.6),
                        )
                      ],
                    ),
                    child: Center(
                        child: Text(
                      'Coupons',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    )),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 25, bottom: 16),
                child: Text(
                  'History',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    TransparentImageCard(
                        width: 180,
                        height: 200,
                        imageProvider: NetworkImage(
                            'https://images.unsplash.com/photo-1560343090-f0409e92791a?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D'),
                        title: Text(
                          'Red Chief',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white,fontSize: 16),
                        ),
                        description: Text(
                          "Leather Formal Shoes for Men's",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: const Color.fromARGB(255, 228, 228, 228)),
                        )),
                    SizedBox(
                      width: 16,
                    ),
                    TransparentImageCard(
                        width: 180,
                        height: 200,
                        imageProvider: NetworkImage(
                            'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D'),
                        title: Text(
                          'Boat Rockerz 551',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white,fontSize: 16),
                        ),
                        description: Text(
                          'Wireless Over Ear Headphones',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              color: const Color.fromARGB(255, 228, 228, 228)),
                        )),
                    SizedBox(
                      width: 16,
                    ),
                    TransparentImageCard(
                        width: 180,
                        height: 200,
                        imageProvider: NetworkImage(
                            'https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D'),
                        title: Text(
                          'Noise Pulse 2',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white,fontSize: 16),
                        ),
                        description: Text(
                          'HD Display, Bluetooth Calling',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: const Color.fromARGB(255, 228, 228, 228),fontSize: 14),
                        )),
                    SizedBox(
                      width: 16,
                    ),
                    TransparentImageCard(
                        width: 180,
                        height: 200,
                        imageProvider: NetworkImage(
                            'https://images.unsplash.com/photo-1602143407151-7111542de6e8?auto=format&fit=crop&q=60&w=900&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHByb2R1Y3R8ZW58MHx8MHx8fDA%3D'),
                        title: Text(
                          'Milton Gripper',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),
                        ),
                        description: Text(
                          'Leak Proof, Easy Grip, Light Weight',
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: const Color.fromARGB(255, 228, 228, 228),fontSize: 14),
                        )),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
