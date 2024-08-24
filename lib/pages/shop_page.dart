// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzi_ecommerce_birds/components/bird_tile.dart';
import 'package:uzi_ecommerce_birds/models/bird.dart';
import 'package:uzi_ecommerce_birds/models/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addBirdToCart(Bird bird) {
    Provider.of<Cart>(context, listen: false).addItem(bird);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Added Da Bird"),
              content: Text('Check Da Cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //Search
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.all(9),
                  margin: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),

                //Message
                Center(
                  child: Container(
                    padding: EdgeInsets.only(
                        right: 15, left: 15, top: 25, bottom: 25),
                    child: Text(
                      "Here you can buy the most exotic\n Hobo Birds!",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),

                Expanded(
                    child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Bird bird = value.getBirdList()[index];

                    return BirdTile(
                      bird: bird,
                      onTap: () => addBirdToCart(bird),
                    );
                  },
                )),

                Container(
                  height: 70,
                ),
              ],
            ));
  }
}
