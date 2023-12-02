import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/drink.dart';

class DrinkTile extends StatelessWidget {
  final Drink drink;
  final void Function()? onTap; 
  const DrinkTile({
    super.key,
    required this.drink,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: 250,
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(left: 12, bottom: 25, right: 12),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            Image.asset(
              drink.imagePath,
              height: 140,
            ),
    
            //Text
            Text(
              drink.name,
              style: GoogleFonts.dmSerifDisplay(fontSize: 20),
            ),
    
            //Price + Rating
            SizedBox(
              width: 160,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Price
                  Text(
                    '\Rp' + drink.price, 
                    style: TextStyle(
                      fontWeight: FontWeight.bold, 
                      color: Colors.grey[700]
                    ),
                  ),
    
                  //rating
                  Row(
                    children: [
                      Icon(
                    Icons.star,
                    color: Colors.yellow[800],
                  ),
                  Text(
                    drink.rating, 
                    style: TextStyle(color: Colors.grey),
                  ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
     ),
    );
  }
}