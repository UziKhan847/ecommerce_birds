// ignore_for_file: prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar(
      {super.key, required this.onTabChange, required this.activeBtnIndex});

  void Function(int)? onTabChange;
  int activeBtnIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.black, boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), //color of shadow
            spreadRadius: 3, //spread radius
            blurRadius: 6, // blur radius
            offset: Offset(0, 0), // changes position of shadow
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.all(13),
          child: GNav(
              selectedIndex: activeBtnIndex,
              mainAxisAlignment: MainAxisAlignment.center,
              color: Colors.white,
              activeColor: Colors.white,
              tabActiveBorder: Border.all(color: Colors.white),
              tabBorderRadius: 18,
              padding: EdgeInsets.all(15),
              gap: 5.5,
              onTabChange: (value) {
                onTabChange!(value);
                print('Vaue: $value');
              },
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Shop',
                ),
                GButton(
                  icon: Icons.shopping_bag,
                  text: 'Cart',
                )
              ]),
        ));
  }
}
