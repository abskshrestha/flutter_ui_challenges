import 'package:flutter/material.dart';

class PlantDetailsPage extends StatelessWidget {
  const PlantDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Details'),
      ),
      backgroundColor: Colors.green[100],
      body: Center(
        child: Text('This is the details of the plant!'),
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
