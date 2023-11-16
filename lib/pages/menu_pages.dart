import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_and_order/components/button.dart';
import 'package:restaurant_and_order/models/drink.dart';
import 'package:restaurant_and_order/models/food.dart';
import 'package:restaurant_and_order/models/signature.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // Signature menu
  List<Signature> signatureMenu = [
    Signature(
      name: "Wagyu Beef Dry Aged x WWE",
      price: "188.000",
      imagePath: "images/s_wagyu_beef_dry_aged.jpg",
      rating: "5.0",
    ),
    Signature(
      name: "Cena Rib Eye with Tartar Sauce",
      price: "178.000",
      imagePath: "images/autan.jpg",
      rating: "4.9",
    ),
    Signature(
      name: "Under T-aker Bone Steak",
      price: "208.000",
      imagePath: "images/led.jpg",
      rating: "4.8",
    ),
    Signature(
      name: "Shaky Shake Mysterio",
      price: "36.000",
      imagePath: "images/placeholder.jpg",
      rating: "4.9",
    ),
  ];

  // Food menu
  List<Food> foodMenu = [
    Food(
      name: "Banger and Mash",
      price: "45.000",
      imagePath: "images/m_banger_and_mash.jpg",
      rating: "4.5",
    ),
    Food(
      name: "Burger Cang",
      price: "28.000",
      imagePath: "images/m_burger.jpg",
      rating: "4.6",
    ),
    Food(
      name: "Caesar Salad",
      price: "23.000",
      imagePath: "images/m_caesar_salad.jpg",
      rating: "4.6",
    ),
    Food(
      name: "Chicken Cordon Blue",
      price: "23.000",
      imagePath: "images/m_chicken_cordon_blue.jpg",
      rating: "4.6",
    ),
    Food(
      name: "Chicken Parmesan",
      price: "23.000",
      imagePath: "images/m_chicken_parmesan.jpg",
      rating: "4.6",
    ),
    Food(
      name: "Lasagna",
      price: "23.000",
      imagePath: "images/m_lasagna.jpg",
      rating: "4.6",
    ),
    Food(
      name: "Potluck Mac and Cheese",
      price: "23.000",
      imagePath: "images/m_potluck_mac_and_cheese.jpg",
      rating: "4.6",
    ),
    Food(
      name: "Ratatouille",
      price: "23.000",
      imagePath: "images/m_ratatouille.jpg",
      rating: "4.6",
    ),
    Food(
      name: "Spaetzle",
      price: "23.000",
      imagePath: "images/m_spaetzle.jpg",
      rating: "4.6",
    ),
    Food(
      name: "Steak",
      price: "23.000",
      imagePath: "images/m_steak.jpg",
      rating: "4.6",
    ),
  ];

  // Drink Menu
  List<Drink> drinkMenu = [
    Drink(
      name: "Avocado Juice",
      price: "18.000",
      imagePath: "images/d_avocado_juice.jpeg",
      rating: "4.7",
    ),
    Drink(
      name: "Orange Juice",
      price: "18.000",
      imagePath: "images/d_orange_juice.jpg",
      rating: "4.6",
    ),
    Drink(
      name: "Tomato Juice",
      price: "16.000",
      imagePath: "images/d_tomato_juice.jpg",
      rating: "4.5",
    ),
    Drink(
      name: "Banana Milkshake",
      price: "21.000",
      imagePath: "images/d_banana_milkshake.jpg",
      rating: "4.5",
    ),
    Drink(
      name: "Chocolate Milkshake",
      price: "20.000",
      imagePath: "images/d_chocolate_milkshake.jpg",
      rating: "4.8",
    ),
    Drink(
      name: "Vanilla Milkshake",
      price: "20.000",
      imagePath: "images/d_vanilla_milkshake.jpg",
      rating: "4.7",
    ),
    Drink(
      name: "Strawberry Milkshake",
      price: "20.000",
      imagePath: "images/d_strawberry_milkshake.jpg",
      rating: "4.8",
    ),
    Drink(
      name: "Classic Milk Tea",
      price: "23.000",
      imagePath: "images/d_classic_milk_tea.jpg",
      rating: "4.6",
    ),
    Drink(
      name: "Matcha Milk Tea",
      price: "24.000",
      imagePath: "images/d_matcha_milk_tea.jpg",
      rating: "4.8",
    ),
    Drink(
      name: "Taro Milk Tea",
      price: "24.000",
      imagePath: "images/d_taro_milk_tea.jpg",
      rating: "4.5",
    ),
    Drink(
      name: "Lemon Tea",
      price: "16.000",
      imagePath: "images/d_lemon_tea.jpg",
      rating: "4.5",
    ),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Promo banner
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Image.asset(
                    'images/pasta.png',
                    height: 50,
                  ),
                  const SizedBox(width: 20),
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
                  MyButton(
                    text: "Redeem",
                    onTap: () {},
                  ),
                ],
              ),
            ),

            // Special offer image and text
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'images/beef.png',
                    height: 100,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    'Special Offer!',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // Search bar
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
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Food menu header
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

            // Food menu list
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodMenu.length,
                itemBuilder: (context, index) => FoodTile(
                  food: foodMenu[index],
                ),
              ),
            ),

            const SizedBox(height: 50),

            // Signature menu header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Signature Menu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 18,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Signature menu list
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: signatureMenu.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(8),
                  width: 150,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      signatureMenu[index].name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 50),

            // Drink menu header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Drink Menu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 18,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Drink menu list
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: drinkMenu.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.all(8),
                  width: 150,
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      drinkMenu[index].name,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
