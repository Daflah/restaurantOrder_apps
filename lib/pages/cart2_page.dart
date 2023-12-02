import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_and_order/components/button.dart';
import 'package:restaurant_and_order/models/drink.dart';
import 'package:restaurant_and_order/models/shop.dart';



class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove from cart
  void removeFromcart(Drink drink,BuildContext context){
    //get access to shop
    final shop = context.read<Shop>();

    //remove from cart 
    shop.removeFromcart2(drink);
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
              
              final Drink drink = value.cart2 [index];
            
              //get food name
             
              final String drinkName = drink.name;
              
              //get food price
              
              final String drinkPrice = drink.price;
              
              //return list title
              return Container(
                decoration:  BoxDecoration(color: Color.fromARGB(255, 230, 75, 3),
                borderRadius: BorderRadius.circular(8),
                ),
                margin: const EdgeInsets.only(left:20,top: 20 ,right: 20),
                child: ListTile(
                  title: Text
                  (drinkName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                  subtitle: Text(drinkPrice,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  )),
                  trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.white,),
                  onPressed: () => removeFromcart(drink,context),
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

