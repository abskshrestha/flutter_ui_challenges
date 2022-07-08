import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(Icons.android,
              size: 150,
              color: Colors.deepPurple[600],
              ),
       
              //Hello Text
              
              Text(
                "Hello Again!",
                style: GoogleFonts.bebasNeue(
                  fontSize: 50,
                  fontWeight: FontWeight.w500,
                  color: Colors.deepPurple[600],
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Welcome Back, You've been missed!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.deepPurple.shade400,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 25),

              //Email Textfield

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,
                    color: Colors.blue[600],),
                    hintText: "Email",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple.shade600),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple.shade600),
                    ),
                  ),
                ),
              ),

              //Passsword Textfield

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_outlined,
                    color: Colors.blue[600]),
                    hintText: "Password",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple.shade600),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple.shade600),
                    ),
                  ),
                ),
              ),

              //Login Button

              Padding(
                padding: EdgeInsets.all(12.0),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.deepPurple.shade400),
                    ),

                    //Not a member? Register Button

                    child: Text('Sign in'),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member? ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.deepPurple.shade400,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Register now',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.blue[600],
                      
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
