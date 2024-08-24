import 'package:flutter/material.dart';

import 'bird.dart';

class Cart extends ChangeNotifier {
//list of birds
  List<Bird> birdShop = [
    Bird(
        description: 'This is the magestic\n Ice Hobo Bird',
        imgPath: 'lib/images/1.png',
        name: 'Ice Hobo Bird',
        price: '\$2000'),
    Bird(
        description: 'This is the magestic\n Water Hobo Bird',
        imgPath: 'lib/images/2.png',
        name: 'Water Hobo Bird',
        price: '\$3000'),
    Bird(
        description: 'This is the magestic\n Ground Hobo Bird',
        imgPath: 'lib/images/3.png',
        name: 'Ground Hobo Bird',
        price: '\$4000'),
    Bird(
        description: 'This is the magestic\n Air Hobo Bird',
        imgPath: 'lib/images/4.png',
        name: 'Air Hobo Bird',
        price: '\$5000'),
  ];

//list of birds in the cart
  List<Bird> userCart = [];

//get list of birds
  List<Bird> getBirdList() {
    return birdShop;
  }

//get cart
  List<Bird> getUserCart() {
    return userCart;
  }

//add items
  void addItem(Bird bird) {
    userCart.add(bird);
    notifyListeners();
  }

//remove items
  void removeItem(Bird bird) {
    userCart.remove(bird);
    notifyListeners();
  }
}
