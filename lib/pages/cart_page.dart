import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_and_order/components/button.dart';
import 'package:restaurant_and_order/models/food.dart';
import 'package:restaurant_and_order/models/shop.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove from cart
  void removeFromcart(Food food,BuildContext context){
    //get access to shop
    final shop = context.read<Shop>();

    //remove from cart 
    shop.removeFromcart(food);
  }
  
  get builder => null;

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(builder: (context, value, child) => Scaffold(backgroundColor: Colors.red,
      appBar: AppBar(title: const Text("My Cart"),elevation: 0,
      backgroundColor: Colors.red,),
      body: Column(
        children: [
          //CUSTOMER CART

          Expanded(
            child: ListView.builder(
              itemCount: value.cart.length,
              itemBuilder: (context,index) {
              //get food from cart
              final Food food = value.cart [index];
              //get food name
              final String foodName = food.name;
              //get food price
              final String foodPrice = food.price;
              //return list title
              return Container(
                decoration:  BoxDecoration(color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(8),
                ),
                margin: const EdgeInsets.only(left:20,top: 20 ,right: 20),
                child: ListTile(
                  title: Text
                  (foodName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                  subtitle: Text(foodPrice,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                  )),
                  trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.grey,),
                  onPressed: () => removeFromcart(food,context),
                  ),
                ),
              );
            },
              ),
          ),
    //PAY BUTTON
    Padding(
      padding: const EdgeInsets.all(25.0),
      child: MyButton(text: "Pay Now", onTap: (){}),
    )
        ],
      )),);
  }
}

