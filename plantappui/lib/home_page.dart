import 'dart:ui';

import 'package:flutter/material.dart';
import './plant_details_page.dart';
import './plant_type.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

void SelectPlant(BuildContext ctx) {
  Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) {
    return PlantDetailsPage();
  }));
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.menu),
          title: const Text(
            'Good Morning!',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.person),
            ),
          ]),
      body: InkWell(
        onTap: () => SelectPlant(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        child: Column(
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
                        'WE HAVE PLANTS FOR EVERYONE 🌻',
                        style: TextStyle(
                            fontSize: 25.0,
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
                      backgroundImage: AssetImage("assets/images/monstera.jpg"),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Find your Plant",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                PlantType(),
                PlantType(),
                PlantType(),
              ],
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), backgroundColor: Colors.green, label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              backgroundColor: Colors.green,
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              backgroundColor: Colors.green,
              label: ''),
        ],
      ),
    );
  }
}
