import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Hi, Jared!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                    ),

                    // Notifications

                    Container(                    
                    decoration: BoxDecoration(
                      color: Colors.blueAccent),                   
                    child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )



                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
