import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_and_order/components/button.dart';
// import 'package:restaurant_and_order/components/signature_tile.dart';
import 'package:restaurant_and_order/models/drink.dart';
import 'package:restaurant_and_order/models/food.dart';
import 'package:restaurant_and_order/models/shop.dart';
import 'package:restaurant_and_order/models/signature.dart';
import 'package:restaurant_and_order/pages/food_details_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant_and_order/pages/location_page.dart';

import '../components/food_tile.dart';
import '../components/drink_tile.dart';
import '../components/signature_tile.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key? key}) : super(key: key);

  final user = FirebaseAuth.instance.currentUser!;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // Signature menu
  final List<Signature> signatureMenu = [
    Signature(
      name: "Wagyu Beef Dry Aged x WWE",
      price: "188.000",
      imagePath: "images/s_wagyu_beef.jpg",
      rating: "5.0",
      description:
          "VIP ONLY!!! The Premium dry aged wagyu A5 beef with special secret WWE sauce made exclusively for the VIP served specially.",
    ),
    Signature(
      name: "Cena Rib Eye with Tartar Sauce",
      price: "178.000",
      imagePath: "images/s_cena_ribeye.jpg",
      rating: "4.9",
      description:
          "John Cena eat this?!! Tasty tender US rib eye premium beef grilled perfectly well comes with special tartar sauce feels like john cena.",
    ),
    Signature(
      name: "Under T-aker Bone Steak",
      price: "208.000",
      imagePath: "images/s_under_Taker_Bone.jpg",
      rating: "4.8",
      description:
          "Champions only! T-Bone beef steak marinated by signature WWE sauce with smoky flavour and delicious tender meat.",
    ),
    Signature(
      name: "Shaky Shake Mysterio",
      price: "36.000",
      imagePath: "images/s_shaky_shake.jpg",
      rating: "4.9",
      description:
          "Mysterio? some mysterious mix of ingredients special for WWE feel fresh and sweet milkshake make your day feel free and mysterious.",
    ),
  ];

  final List<Food> _foodMenu = [
    Food(
      name: "Banger and Mash",
      price: "45.000",
      imagePath: "images/m_banger_and_mash.jpg",
      rating: "4.5",
      description:
          "Traditional British comfort food! Savor the flavors of savory sausages atop a bed of creamy mashed potatoes, all drizzled with rich onion gravy. A hearty and satisfying dish.",
    ),
    Food(
      name: "Burger Cang",
      price: "28.000",
      imagePath: "images/m_burger.jpg",
      rating: "4.6",
      description:
          "A classic delight! Our Burger Cang features a juicy, hand-smashed beef patty topped with crisp lettuce, ripe tomatoes, and your favorite condiments, all embraced by a toasted bun. A simple yet delicious experience. ", // Tambahkan deskripsi
    ),
    Food(
        name: "Caesar Salad",
        price: "23.000",
        imagePath: "images/m_caesar_salad.jpg",
        rating: "4.6",
        description:
            "Crisp romaine lettuce tossed in creamy Caesar dressing, adorned with crunchy croutons and a sprinkle of Parmesan cheese. A timeless salad that's both refreshing and satisfying."),
    Food(
        name: "Chicken Cordon Blue",
        price: "23.000",
        imagePath: "images/m_chicken_cordon_blue.jpg",
        rating: "4.6",
        description:
            "Tender chicken breast wrapped around ham and Swiss cheese, lightly breaded and baked to golden perfection. Served with a side of creamy signature WWE sauce, it's a classic combination that never disappoints."),
    Food(
        name: "Chicken Parmesan",
        price: "23.000",
        imagePath: "images/m_Parmesan.jpg",
        rating: "4.6",
        description:
            "Crispy breaded chicken smothered in marinara sauce and melted mozzarella cheese."),
    Food(
        name: "Lasagna",
        price: "23.000",
        imagePath: "images/m_lasagna.jpg",
        rating: "4.6",
        description:
            "Layers of lasagna pasta, rich meat sauce, and melted mozzarella, all baked to perfection. A hearty and flavorful dish that's a timeless crowd-pleaser. Feels like in Italy Mamamia lezatos."),
    Food(
        name: "Potluck Mac and Cheese",
        price: "23.000",
        imagePath: "images/m_potluck_mac_and_cheese.jpg",
        rating: "4.6",
        description:
            "Creamy and cheesy, our macaroni and cheese is a potluck favorite. Elbow macaroni coated in a velvety cheese sauce, baked to a golden brown crust. A comforting classic that brings everyone to the table and the most comforting to be in a dinner with your couple AWW."),
    Food(
        name: "Ratatouille",
        price: "23.000",
        imagePath: "images/m_ratatouille.jpg",
        rating: "4.6",
        description:
            "A medley of colorful vegetables, including eggplant, zucchini, and bell peppers, cooked to tender perfection in a flavorful tomato sauce. A wholesome and delicious option for vegetarians. Taste same like in a movie of ratatouille but human made deliciouso."),
    Food(
        name: "Spaetzle",
        price: "23.000",
        imagePath: "images/m_spaetzle.jpg",
        rating: "4.6",
        description:
            "Soft, pillowy German egg noodles, lightly browned for a comforting bite. Served with a choice of rich gravy or melted butter, our spaetzle is a delightful taste of European comfort. "),
    Food(
        name: "Steak",
        price: "23.000",
        imagePath: "images/m_steak.jpg",
        rating: "4.6",
        description:
            "Juicy and tender US steak WWE choices, grilled to perfection. Served with your choice of side, our steak is a hearty and satisfying dish that promises a mouthful of bold, savory flavors."),
  ];

  // Drink Menu
  final List<Drink> drinkMenu = [
    Drink(
      name: "Avocado jus",
      price: "18.000",
      imagePath: "images/d_avocado_juice.jpg",
      rating: "4.7",
      description:
          "Creamy and refreshing, Avocado Juice is a blend of ripe avocados, a hint of sweetness, and a splash of chilled goodness. A nourishing and satisfying beverage that's as indulgent as it is healthy, good for bulking, also WWE choices.",
    ),
    Drink(
      name: "Orange Juice",
      price: "18.000",
      imagePath: "images/d_orange_juice.jpeg",
      rating: "4.6",
      description:
          "Start your day with a burst of happiness while single! Orange Juice is freshly squeezed to perfection, offering a sweet and tangy flavor that's as invigorating as a stroll through a citrus grove.",
    ),
    Drink(
      name: "Tomato Juice",
      price: "16.000",
      imagePath: "images/d_tomato_juice.jpg",
      rating: "4.5",
      description:
          "Pure, vibrant tomatoes blended into a zesty and invigorating juice. Packed with vitamins and freshness, Tomato Juice is a revitalizing choice for those looking for a savory and wholesome drink, good for diet approved by kenneth.",
    ),
    Drink(
      name: "Banana Milkshake",
      price: "21.000",
      imagePath: "images/d_banana_milkshake.jpg",
      rating: "4.5",
      description:
          "Creamy of sweetness and happiness! Banana Milkshake blends ripe bananas with cold milk and a touch of sweetness. A delicious and satisfying option for banana lovers.",
    ),
    Drink(
      name: "Chocolate Milkshake",
      price: "20.000",
      imagePath: "images/d_chocolate_milkshake.jpg",
      rating: "4.8",
      description:
          "Rich guy only drink this, velvety chocolate blended with creamy milk and a scoop of luscious ice cream. Chocolate Milkshake is a decadent treat that will satisfy your sweet cravings in every sip.",
    ),
    Drink(
      name: "Vanilla Milkshake",
      price: "20.000",
      imagePath: "images/d_vanilla_milkshake.jpg",
      rating: "4.7",
      description:
          "Pure like baby, classic indulgence! Vanilla Milkshake is a timeless treat featuring smooth vanilla ice cream blended with cold milk. It's a simple yet heavenly concoction for those who appreciate the beauty of simplicity.",
    ),
    Drink(
      name: "Strawberry Milkshake",
      price: "20.000",
      imagePath: "images/d_strawberry_milkshake.jpg",
      rating: "4.8",
      description:
          "Sweet like her/him, ripe strawberries blended with cold milk and a scoop of indulgent ice cream. Strawberry Milkshake is a delightful, pink-hued creation that captures the essence of summer in a glass.",
    ),
    Drink(
      name: "Classic Milk Tea",
      price: "23.000",
      imagePath: "images/d_classic_milkshake.jpg",
      rating: "4.6",
      description:
          "Embrace the comforting warmth feels like in mama’s hug. Perfectly brewed black tea meets velvety milk, creating a harmonious balance of flavors that's both nostalgic and delightful.",
    ),
    Drink(
      name: "Matcha Milk Tea",
      price: "24.000",
      imagePath: "images/d_matcha_milktea.jpg",
      rating: "4.8",
      description:
          "Experience the vibrant green goodness of our Matcha Milk Tea. High-quality matcha powder only can bought by WWE, meets smooth milk for a beverage that's both energizing and soothing. A perfect blend of tradition and innovation in every sip.",
    ),
    Drink(
      name: "Taro Milk Tea",
      price: "24.000",
      imagePath: "images/d_taro_milkshake.jpg",
      rating: "4.5",
      description:
          "A unique twist on tradition! Our Taro Milk Tea features the rich, earthy flavor of taro combined with the creamy goodness of milk tea. A delicious and exotic choice for those seeking something different.",
    ),
    Drink(
      name: "Lemon Tea",
      price: "16.000",
      imagePath: "images/d_lemon_tea.jpg",
      rating: "4.5",
      description:
          "A classic favorite and cheapest drink in WWE! WWE Lemon Tea combines brisk black tea with the zing of fresh lemon. Served hot or iced, it's a timeless, soothing beverage that strikes the perfect balance between tart and sweet.",
    ),
  ];

  // navigate to food item details page
  void navigateToFoodDetails(int index) {
    //get the shop and it's menu
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodMenu[index],
        ),
      ),
    );
  }

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cartpage');
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
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
                  const Text(
                    'Special Offer!',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),

            // location bar
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: GestureDetector(
                onTap: () {
                },
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    FaIcon(
                      FontAwesomeIcons.mapLocationDot,
                      color: const Color(0xFFf60909),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      'Visit Our Location',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(width: 6),
                     MyButton(
                    text: "Visit",
                    onTap: () {
                      Navigator.pushNamed(context, '/location');
                    },
                  ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35),

            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 50),

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
                itemCount: _foodMenu.length,
                itemBuilder: (context, index) => FoodTile(
                  food: _foodMenu[index],
                  onTap: () => navigateToFoodDetails(index),
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
            // Container(
            //   height: 300,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: signatureMenu.length,
            //     itemBuilder: (context, index) => FoodTile(
            //       margin: EdgeInsets.all(8),
            //       width: 150,
            //       color: Colors.orange,
            //       child: Center(
            //         child: Text(
            //           signatureMenu[index].name,
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _foodMenu.length,
                itemBuilder: (context, index) => SignatureTile(
                  signature: signatureMenu[index],
                  onTap: () => navigateToFoodDetails(index),
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
                itemCount: _foodMenu.length,
                itemBuilder: (context, index) => DrinkTile(
                  drink: drinkMenu[index],
                  onTap: () => navigateToFoodDetails(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
