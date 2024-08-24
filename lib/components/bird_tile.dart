// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:uzi_ecommerce_birds/models/bird.dart';

class BirdTile extends StatelessWidget {
  Bird bird;
  void Function()? onTap;
  BirdTile({super.key, required this.bird, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 14, right: 14),
      width: 250,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 48, 48, 48),
          borderRadius: BorderRadiusDirectional.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Image
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(bird.imgPath, width: 250)),

          //descript
          Text(
            bird.description,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //name
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bird.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 17),
                    ),

                    SizedBox(height: 3),

                    //price
                    Text(
                      bird.price,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),

                //button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    padding: EdgeInsets.all(20),
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
