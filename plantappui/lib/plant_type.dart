import 'package:flutter/material.dart';

class PlantType extends StatelessWidget {
  const PlantType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.green.shade300,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset("assets/images/monstera.jpg"),
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Monstera Delicosa",
                      style:
                          TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.white),
                    ),
                    const Text("Indoor Plant", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white70),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$4.00'),
                    Icon(Icons.add_shopping_cart),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
