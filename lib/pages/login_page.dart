import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_and_order/components/button_login.dart';
import 'package:restaurant_and_order/components/my_textfield.dart';
import 'package:restaurant_and_order/components/square_tile.dart';

class LoginPage extends StatefulWidget {

  final Function()? onTap;
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  //text editing controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in
  void signUserIn() async {

    //show loading cicrle
    showDialog(
      context: context, 
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    //try sign in
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text, 
      password: passwordController.text,
    );
    // pop the loading circle
    Navigator.pop(context);

    } on FirebaseAuthException catch (e){

      // pop the loading circle
      Navigator.pop(context);
      
      //show Error Message
      showErrorMessage(e.code);
    }
  }

  //wrong email message popup
  void showErrorMessage(String message){
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.red,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          )
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 86, 112, 126),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
        
                //logo
                const Icon(
                  Icons.lock,
                  size: 100,
                  color: Color.fromARGB(255, 230, 75, 3),
                ),
        
                const SizedBox(height: 30),
                
                //welcome back or greetings
                const Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
        
                const SizedBox(height: 20),
                
                //email textfield
                 MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),
        
                const SizedBox(height: 10),
        
                //pasword textfield
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
        
                const SizedBox(height: 10),
        
        
                //forgot password
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
        
                const SizedBox(height: 25),
                
                //sign in button
                ButtonLogin(
                  text: "Sign Up",
                  onTap: signUserIn,
                ),
        
                const SizedBox(height: 50),
        
                //or continue with
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.white,
                        ),
                      ),
                
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
        
                const SizedBox(height: 50),
        
                //google + facebook sign in button
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google button
                    SquareTile(imagesPath: 'images/GoogleLogo.png'),
        
                    SizedBox(width: 10),
        
                    //facebook button
                    SquareTile(imagesPath: 'images/FacebookLogo.png'),
                  ],
                ),
                
                const SizedBox(height: 25),
        
                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Register now',
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
        
            ]),
          ),
        ),
      ),
    );
  }
}