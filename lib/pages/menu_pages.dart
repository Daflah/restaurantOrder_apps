import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_and_order/components/button.dart';
import 'package:restaurant_and_order/models/drink.dart';
import 'package:restaurant_and_order/models/food.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // food menu
  List foodMenu = [
    // banger and mash
    Food(
      name: "Banger and Mash",
      price: " 45.000",
      imagePath: "images/m_banger_and_mash.jpg",
      rating: "4.5",
    ),

    // burger
    Food(
      name: "Burger Cang",
      price: " 28.000",
      imagePath: "images/m_burger.jpg",
      rating: "4.6",
    ),

    //Caesar Salad
    Food(
      name: "Caesar Salad",
      price: " 23.000",
      imagePath: "images/m_caesar_salad.jpg",
      rating: "4.6",
    ),

    //Chicken cordon blue
    Food(
      name: "Chicken Cordon Blue",
      price: " 23.000",
      imagePath: "images/m_chicken_cordon_blue.jpg",
      rating: "4.6",
    ),

    //Chicken Parmesan
    Food(
      name: "Chicken Parmesan",
      price: " 23.000",
      imagePath: "images/m_chicken_parmesan.jpg",
      rating: "4.6",
    ),

    //Lasagna
    Food(
      name: "Lasagna",
      price: " 23.000",
      imagePath: "images/m_lasagna.jpg",
      rating: "4.6",
    ),

    //Potluck Mac and Cheese
    Food(
      name: "Potluck Mac and Cheese",
      price: " 23.000",
      imagePath: "images/m_potluck_mac_and_cheese.jpg",
      rating: "4.6",
    ),

    //Ratatouille
    Food(
      name: "Ratatouille",
      price: " 23.000",
      imagePath: "images/m_ratatouille.jpg",
      rating: "4.6",
    ),

    //Spaetzle
    Food(
      name: "Spaetzle",
      price: " 23.000",
      imagePath: "images/m_spaetzle.jpg",
      rating: "4.6",
    ),

    //Steak
    Food(
      name: "Steak",
      price: " 23.000",
      imagePath: "images/m_steak.jpg",
      rating: "4.6",
    ),
  ];
  //Drink Menu
  List drinkMenu = [
    //Avocado Juice
    Drink(
        name: "Avocado Juice",
        price: " 18.000",
        imagePath: "images/d_avocado juice.jpeg",
        rating: "4.7"),

    //Orange Juice
    Drink(
        name: "Orange Juice",
        price: " 18.000",
        imagePath: "images/d_orange_juice.jpg",
        rating: "4.6"),

    //Tomato Juice
    Drink(
        name: "Tomato Juice",
        price: " 16.000",
        imagePath: "images/d_tomato_juice.jpg",
        rating: "4.5"),

    //Banana Milkshake
    Drink(
        name: "Banana Milkshake",
        price: " 21.000",
        imagePath: "images/d_banana_milkshake.jpg",
        rating: "4.5"),
    
    //Chocolate Milkshake
    Drink(
        name: "Chocolate Milkshake",
        price: " 20.000",
        imagePath: "images/d_chocolate_milkshake.jpg",
        rating: "4.8"),

    //Vanilla Milkshake
    Drink(
        name: "Vanilla Milkshake",
        price: " 20.000",
        imagePath: "images/d_vanilla_milkshake.jpg",
        rating: "4.7"),

    //Strawberry Milkshake
    Drink(
        name: "Strawberry Milkshake",
        price: " 20.000",
        imagePath: "images/d_strawberry_milkshake.jpg",
        rating: "4.8"),
        
    //Classic Milk Tea 
    Drink(
        name: "Classic Milk Tea",
        price: " 23.000",
        imagePath: "images/d_classic_milk_tea.jpg",
        rating: "4.6"),

    //Matcha Milk Tea
    Drink(
        name: "Matcha Milk Tea",
        price: " 24.000",
        imagePath: "images/d_matcha_milk_tea.jpg",
        rating: "4.8"),

    //Taro Milk Tea
    Drink(
        name: "Taro Milk Tea",
        price: " 24.000",
        imagePath: "images/d_taro_milk_tea.jpg",
        rating: "4.5"),

    //Lemon Tea
    Drink(
        name: "Lemon Tea",
        price: " 16.000",
        imagePath: "images/d_lemon_tea.jpg",
        rating: "4.5"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          'WONDERFUL WESTERN EATING',
          style: TextStyle(color: Colors.grey[900]),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // promobanner
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              children: [
                // Image next to "Get 32% Promo" text
                Image.asset(
                  'images/pasta.png', // Replace with the path to your image
                  height: 50, // Adjust the height as needed
                ),
                const SizedBox(width: 20),
                // Get 32% Promo text
                Expanded(
                  child: Text(
                    'Get 40% Promo',
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // Redeem button
                MyButton(
                  text: "Redeem",
                  onTap: () {},
                ),
              ],
            ),
          ),
          // image and text
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                // Image
                Image.asset(
                  'images/beef.png',
                  height: 100,
                ),
                const SizedBox(width: 20),
                // Discount text
                Text(
                  'Special Offer!',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          const SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
