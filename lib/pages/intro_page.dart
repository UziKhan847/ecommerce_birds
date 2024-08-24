// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uzi_ecommerce_birds/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              //logo
              Image.asset(
                'lib/images/bird logo 2.png',
                height: 300,
                //color: Colors.white,
              ),

              const SizedBox(height: 40),

              //Title
              Text(
                'The Bird Sanctuary',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),

              //subtitle
              Text(
                'Welcome to the world of Birds',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),

              const SizedBox(height: 60),

              //Button to HomePage
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  height: 50,
                  margin: EdgeInsets.only(right: 27, left: 27),
                  child: Center(
                      child: Text(
                    'Shop Now',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
                ),
              ),

              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
