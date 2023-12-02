import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
          BoxShadow(
            color: Colors.grey,   // Warna bayangan
            offset: Offset(0, 2),  // Geser bayangan (x, y)
            blurRadius: 4.0,       // Jarak blur bayangan
            spreadRadius: 1.0,     // Sebaran bayangan
          ),
        ],
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                ),
            ),
    
            const SizedBox(width: 12),
    
            // Icon
            const Icon(
              Icons.arrow_forward,
              color: Colors.black,
              ),
          ],
        ),
      ),
    );
  }
}