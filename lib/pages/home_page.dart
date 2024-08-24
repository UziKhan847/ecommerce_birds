// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:uzi_ecommerce_birds/components/bottom_nav_bar.dart';
import 'package:uzi_ecommerce_birds/pages/cart_page.dart';
import 'package:uzi_ecommerce_birds/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _slctdIndex = 0;

  void navBtmBar(int index) {
    setState(() {
      _slctdIndex = index;
    });
  }

  final List<Widget> _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 216, 216),
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 5,
        backgroundColor: Colors.black,
        leading: Builder(
            builder: (context) => IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                )),
      ),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) {
          navBtmBar(index);
        },
        activeBtnIndex: _slctdIndex,
      ),
      drawer: Drawer(
        width: 265,
        backgroundColor: Color.fromARGB(244, 238, 238, 238),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      child: Image.asset(
                        'lib/images/bird logo 2.png',
                        color: Color.fromARGB(238, 12, 12, 12),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _slctdIndex = 0;
                          Navigator.pop(context);
                        });
                      },
                      child: ListTile(
                        leading: Icon(Icons.home),
                        title: Text('Shop'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _slctdIndex = 1;
                          Navigator.pop(context);
                        });
                      },
                      child: ListTile(
                        leading: Icon(Icons.shopping_bag),
                        title: Text('Cart'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ListTile(
                      leading: Icon(Icons.info),
                      title: Text('About'),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, bottom: 15),
                child: ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Logout'),
                ),
              ),
            ]),
      ),
      body: _pages[_slctdIndex],
    );
  }
}
