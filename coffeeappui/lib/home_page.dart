import 'dart:ui';
import 'util/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'util/coffee_type.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

//List of Coffee types

final List coffeeType = [
    //coffeetype, IsSelected
    ['cappacino', true],

    ['latte', false],

    ['black', false],
];

//user tapped on coffee types

void coffeeTypeSelected(int index){
  setstate(){
coffeeType[index][1] = true;
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best coffee for you",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 25,
          ),

          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Find your Coffee",
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

          //horizontal listviews of coffee types

          Container(
              height: 50,
              child: ListView.builder(
                itemCount: coffeeType.length,
                itemBuilder: (context, index){
         
                return CoffeeType(
                  coffeeType: coffeeType[index][0], 
                  isSelected: coffeeType[index][1], 
                  onTap: (){
                    coffeeTypeSelected(index);
                  },);
              },
              ),
              ),

          Expanded(
              child: ListView(scrollDirection: Axis.horizontal, children: [
            CoffeeTile(),
            CoffeeTile(),
            CoffeeTile(),
          ]))
        ],
        //horizontal listview of coffe tiles
      ),
    );
  }
}
