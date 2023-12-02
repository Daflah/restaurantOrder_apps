import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_and_order/components/button.dart';
import 'package:restaurant_and_order/models/drink.dart';

import 'package:restaurant_and_order/models/food.dart';
import 'package:restaurant_and_order/models/shop.dart';
import 'package:restaurant_and_order/models/signature.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove from cart
  void removeFromcart(Food food,BuildContext context){
    //get access to shop
    final shop = context.read<Shop>();

    //remove from cart 
    // shop.removeFromcart(food, drink, signature);
    shop.removeFromcart2(Drink as Drink);
    shop.removeFromcart3(Signature as Signature);
  }

  void removeFromcart2(Drink drink,BuildContext context){
    final shop = context.read<Shop>();

    shop.removeFromcart2(drink);
    
  }

  void removeFromcart3(Signature signature,BuildContext context){
    final shop = context.read<Shop>();

    shop.removeFromcart3(signature);
    
  }
  
  get builder => null;

  @override
Widget build(BuildContext context) {
  return Consumer<Shop>(
    builder: (context, value, child) => Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("My Cart"),
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          //CUSTOMER CART
          Expanded(
            child: ListView.builder(
              itemCount: value.cart.length + value.cart2.length + value.cart3.length,
              itemBuilder: (context, index) {
                if (index < value.cart.length) {
                  return buildCartItem(value.cart[index], context);
                } else if (index < value.cart.length + value.cart2.length) {
                  return buildDrinkItem(value.cart2[index - value.cart.length], context);
                } else {
                  return buildSignatureItem(value.cart3[index - value.cart.length - value.cart2.length], context);
                }
              },
            ),
          ),
          //PAY BUTTON
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: MyButton(text: "Pay Now", onTap: () {}),
          ),
        ],
      ),
    ),
  );
}

Widget buildCartItem(Food food, BuildContext context) {
  final String foodName = food.name;
  final String foodPrice = food.price;

  return Container(
    decoration: BoxDecoration(
      color: Colors.lightBlue,
      borderRadius: BorderRadius.circular(8),
    ),
    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
    child: ListTile(
      title: Text(
        foodName,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        foodPrice,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.grey),
        onPressed: () => removeFromcart(food, context),
      ),
    ),
  );
}

Widget buildDrinkItem(Drink drink, BuildContext context) {
  final String drinkName = drink.name;
  final String drinkPrice = drink.price;

  return Container(
    decoration: BoxDecoration(
      color: Colors.lightBlue,
      borderRadius: BorderRadius.circular(8),
    ),
    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
    child: ListTile(
      title: Text(
        drinkName,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        drinkPrice,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.grey),
        onPressed: () => removeFromcart2(drink, context),
      ),
    ),
  );
}

Widget buildSignatureItem(Signature signature, BuildContext context) {
  final String signatureName = signature.name;
  final String signaturePrice = signature.price;

  return Container(
    decoration: BoxDecoration(
      color: Colors.lightBlue,
      borderRadius: BorderRadius.circular(8),
    ),
    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
    child: ListTile(
      title: Text(
        signatureName,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        signaturePrice,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.grey),
        onPressed: () => removeFromcart3(signature, context),
      ),
    ),
  );
}


}