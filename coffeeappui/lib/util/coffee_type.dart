import 'package:flutter/material.dart'
;
class CoffeeType extends StatelessWidget {
  const CoffeeType({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 50,
            
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Text("cappacino"),
                
                ],
              ));
  }
}