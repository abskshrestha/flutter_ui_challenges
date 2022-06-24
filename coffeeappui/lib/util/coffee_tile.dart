import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.black54,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // coffee image
              ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset('lib/images/latte.jpg')),
              Text("Latte",
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),

              Text(
                "With almond milk",
                style: TextStyle(color: Colors.grey),
              ),

            Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('\$4.00'),
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(Icons.add))
            ],),
          ),
            ],

            // coffee name
          ),
        ),
        //Row
      
          
        
      ),
    );
  }
}
