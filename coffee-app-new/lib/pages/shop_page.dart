import 'package:coffee_new_app/components/coffee_tile.dart';
import 'package:coffee_new_app/model/coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/coffee_shop.dart';
import 'coffee_oreder_page.dart';

class ShopPage extends StatefulWidget {

  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void goToCoffeePage(Coffee coffee) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CoffeeOrderPage(coffee: coffee),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 25, top: 25),
            child: Text(
              "How do you loke your coffee?",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 25),
          Expanded(
            child: ListView.builder(
              itemCount: value.coffeeShop.length,
              itemBuilder: (context, index) {
                Coffee eachCoffee = value.coffeeShop[index];
                return CoffeeTile(
                  coffee: eachCoffee,
                  onPressed: () => goToCoffeePage(eachCoffee),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}