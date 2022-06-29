import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plantappui/plant_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          title: const Text(
            'Good Morning!',
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.person),
            ),
          ]),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 36.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 250,
                  height: 100,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text(
                      'FIND THE PLANT FOR U',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 18.0),
                  child: CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage("assets/images/monstera.png"),
                  ),
                )
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),

          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Find your Plant!",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),

          SizedBox(height: 25),

           Container(
            height: 50,
            child: ListView.builder(
              PlantType(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              backgroundColor: Colors.green,
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              backgroundColor: Colors.green,
              label: 'Searcsasah'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Bookmark'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
        ],
      ),
    );
  }
}
