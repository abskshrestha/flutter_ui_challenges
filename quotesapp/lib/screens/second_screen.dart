import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String kindBook;
  String idBook;

  SecondScreen({required this.kindBook, required this.idBook});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Text(kindBook),
          Text(idBook),
        ],
      )),
    );
  }
}
