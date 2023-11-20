import 'package:flutter/material.dart';
import 'package:restaurant_and_order/models/food.dart';


class Shop extends ChangeNotifier {


//food menu
    final List <Food> _foodMenu = [
Food(
  name: "Banger and Mash",
  price: "45.000",
  imagePath: "images/m_banger_and_mash.jpg",
  rating: "4.5",
  description: "Traditional British comfort food! Savor the flavors of savory sausages atop a bed of creamy mashed potatoes, all drizzled with rich onion gravy. A hearty and satisfying dish.",
),
Food(
  name: "Burger Cang",
  price: "28.000",
  imagePath: "images/m_burger.jpg",
  rating: "4.6",
  description: "A classic delight! Our Burger Cang features a juicy, hand-smashed beef patty topped with crisp lettuce, ripe tomatoes, and your favorite condiments, all embraced by a toasted bun. A simple yet delicious experience. ", // Tambahkan deskripsi
), 
Food(
  name: "Caesar Salad",
  price: "23.000",
  imagePath: "images/m_caesar_salad.jpg",
  rating: "4.6",
  description: "Crisp romaine lettuce tossed in creamy Caesar dressing, adorned with crunchy croutons and a sprinkle of Parmesan cheese. A timeless salad that's both refreshing and satisfying."
),
Food(
  name: "Chicken Cordon Blue",
  price: "23.000",
  imagePath: "images/m_chicken_cordon_blue.jpg",
  rating: "4.6",
  description: "Tender chicken breast wrapped around ham and Swiss cheese, lightly breaded and baked to golden perfection. Served with a side of creamy signature WWE sauce, it's a classic combination that never disappoints."
),
Food(
  name: "Chicken Parmesan",
  price: "23.000",
  imagePath: "images/m_chicken_parmesan.jpg",
  rating: "4.6",
  description: "Crispy breaded chicken smothered in marinara sauce and melted mozzarella cheese."
),
Food(
  name: "Lasagna",
  price: "23.000",
  imagePath: "images/m_lasagna.jpg",
  rating: "4.6",
  description: "Layers of lasagna pasta, rich meat sauce, and melted mozzarella, all baked to perfection. A hearty and flavorful dish that's a timeless crowd-pleaser. Feels like in Italy Mamamia lezatos."
),
Food(
  name: "Potluck Mac and Cheese",
  price: "23.000",
  imagePath: "images/m_potluck_mac_and_cheese.jpg",
  rating: "4.6",
  description: "Creamy and cheesy, our macaroni and cheese is a potluck favorite. Elbow macaroni coated in a velvety cheese sauce, baked to a golden brown crust. A comforting classic that brings everyone to the table and the most comforting to be in a dinner with your couple AWW."
),
Food(
  name: "Ratatouille",
  price: "23.000",
  imagePath: "images/m_ratatouille.jpg",
  rating: "4.6",
  description: "A medley of colorful vegetables, including eggplant, zucchini, and bell peppers, cooked to tender perfection in a flavorful tomato sauce. A wholesome and delicious option for vegetarians. Taste same like in a movie of ratatouille but human made deliciouso."
),
Food(
  name: "Spaetzle",
  price: "23.000",
  imagePath: "images/m_spaetzle.jpg",
  rating: "4.6",
  description: "Soft, pillowy German egg noodles, lightly browned for a comforting bite. Served with a choice of rich gravy or melted butter, our spaetzle is a delightful taste of European comfort. "
),
Food(
  name: "Steak",
  price: "23.000",
  imagePath: "images/m_steak.jpg",
  rating: "4.6",
  description: "Juicy and tender US steak WWE choices, grilled to perfection. Served with your choice of side, our steak is a hearty and satisfying dish that promises a mouthful of bold, savory flavors."
),
  ];
  

  //customer cart
  final List<Food> _cart = [];

  //getter methode
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int  i=0 ; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }
  //remove from cart
  void removeFromcart(Food food) {
    _cart.remove(food);
    notifyListeners();
   
}
}
