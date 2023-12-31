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
    shop.removeFromcart(food);
    
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
      backgroundColor: const Color.fromARGB(255, 86, 112, 126),
      appBar: AppBar(
        title: const Text(
          "My Cart", 
          style: TextStyle(color: Colors.white
          ),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 86, 112, 126),
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
          // PAY BUTTON
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: MyButton(
              text: "Pay Now",
              onTap: () {
                // Check if the cart is empty
                if (value.cart.isEmpty && value.cart2.isEmpty && value.cart3.isEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.red,
                      content: const Text(
                        "You must buy something before proceeding to payment.",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        // okay button
                        IconButton(
                          onPressed: () {
                            // Pop once to remove the dialog
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.done),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  );
                } else {
                  // Show the payment dialog
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                      backgroundColor: Colors.red,
                      content: const Text(
                        "Payment Successful!",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        // okay button
                        IconButton(
                          onPressed: () {
                            // Pop once to remove the dialog
                            Navigator.pop(context);

                            // Clear the carts after successful payment
                            value.clearCarts();

                            // Pop again to navigate to the previous screen
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.done),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
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
      color: Color.fromARGB(255, 230, 75, 3),
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
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.white),
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
      color: const Color.fromARGB(255, 230, 75, 3),
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
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.white),
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
      color: Color.fromARGB(255, 230, 75, 3),
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
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete, color: Colors.white),
        onPressed: () => removeFromcart3(signature, context),
      ),
    ),
  );
}


}