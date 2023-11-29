import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_and_order/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
          // shop name
          Text(
            "WWE",
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 32,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 5),
      
          // icon
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset('images/beef.png'),
          ),
      
          // title
          Text("WONDERFUL WESTERN EATING",
          style: GoogleFonts.dmSerifDisplay(
              fontSize: 38,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 10),
      
          // subtitle
          Text(
            "If you want to experience the greatness of our western food anywhere and anytime, Come order at our WWE",
            style: TextStyle(color: Colors.grey[300],
            height: 1.5,
            ),
          ),

          const SizedBox(height: 20),
      
          // get started button
          MyButton(
            text: "Login",
            onTap:() {
              //go to menu page or login page
              Navigator.pushNamed(context, '/authpage');
            },
          )
      
      
      
      
        ]),
      ),
    );
  }
}