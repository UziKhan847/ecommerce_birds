import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzi_ecommerce_birds/components/cart_item.dart';
import 'package:uzi_ecommerce_birds/models/bird.dart';
import 'package:uzi_ecommerce_birds/models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getUserCart().length,
                          itemBuilder: (context, index) {
                            Bird individualBird = value.getUserCart()[index];

                            return CartItem(bird: individualBird);
                          }))
                ],
              ),
            ));
  }
}
