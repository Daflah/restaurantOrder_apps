import 'package:restaurant_and_order/models/food.dart';
import 'food.dart';

class shop {


//food menu
    final List <Food> foodMenu = [
Food(
  name: "Banger and Mash",
  price: "45.000",
  imagePath: "images/m_banger_and_mash.jpg",
  rating: "4.5",
  description: "deskripsi Banger and Mash",
),
Food(
  name: "Burger Cang",
  price: "28.000",
  imagePath: "images/m_burger.jpg",
  rating: "4.6",
  description: "deskripsi Burger Cang", // Tambahkan deskripsi
), 
Food(
  name: "Caesar Salad",
  price: "23.000",
  imagePath: "images/m_caesar_salad.jpg",
  rating: "4.6",
  description: "deskripsi caesar salad"
),
Food(
  name: "Chicken Cordon Blue",
  price: "23.000",
  imagePath: "images/m_chicken_cordon_blue.jpg",
  rating: "4.6",
  description: "deskripsi Chicken Cordon Blue"
),
Food(
  name: "Chicken Parmesan",
  price: "23.000",
  imagePath: "images/m_chicken_parmesan.jpg",
  rating: "4.6",
  description: "deskripsi Chicken Parmesan"
),
Food(
  name: "Lasagna",
  price: "23.000",
  imagePath: "images/m_lasagna.jpg",
  rating: "4.6",
  description: "deskripsi Lasagna"
),
Food(
  name: "Potluck Mac and Cheese",
  price: "23.000",
  imagePath: "images/m_potluck_mac_and_cheese.jpg",
  rating: "4.6",
  description: "deskripsi Potluck Mac and Cheese"
),
Food(
  name: "Ratatouille",
  price: "23.000",
  imagePath: "images/m_ratatouille.jpg",
  rating: "4.6",
  description: "deskripsi Ratatouille"
),
Food(
  name: "Spaetzle",
  price: "23.000",
  imagePath: "images/m_spaetzle.jpg",
  rating: "4.6",
  description: "deskripsi Spaetzle"
),
Food(
  name: "Steak",
  price: "23.000",
  imagePath: "images/m_steak.jpg",
  rating: "4.6",
  description: "deskripsi Steak"
),
  ];

  //customer cart
  List<Food> cart = [];

  //getter methode
  List<Food> get foodMenu => foodMenu;
  List<Food> get cart => cart;

  //add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int  1=0; i < quantity; i++) {
      cart.add(foodItem);
    }
    notifyListeners();
  }
  //remove from cart
  void removeFromcart(Food food) {
    cart remove(food)
    void notifyListeners()
  }
  
  void notifyListeners() {}
}