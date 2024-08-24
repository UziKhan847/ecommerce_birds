import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uzi_ecommerce_birds/models/cart.dart';
import '../models/bird.dart';

// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  CartItem({super.key, required this.bird});

  Bird bird;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItem() {
    Provider.of<Cart>(context, listen: false).removeItem(widget.bird);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Image.asset(widget.bird.imgPath),
        title: Text(widget.bird.name),
        subtitle: Text(widget.bird.price),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItem,
        ),
      ),
    );
  }
}
