import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/signature.dart';

class SignatureTile extends StatelessWidget {
  final Signature signature;
  final void Function()? onTap; 
  const SignatureTile({
    super.key,
    required this.signature,
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
        margin: const EdgeInsets.only(left: 12, right: 12),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            Image.asset(
              signature.imagePath,
              height: 140,
            ),
    
            //Text
            Text(
              signature.name,
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
                    '\Rp' + signature.price, 
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
                    signature.rating, 
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