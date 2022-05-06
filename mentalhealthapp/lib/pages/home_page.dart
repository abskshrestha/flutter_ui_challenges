import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/emoticon_face.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //grretongs row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Hi Jared!

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),

                  Column(
                    children: [
                      Text(
                        "Hi, Absk!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),

                      Text(
                        'May 4, 2022',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white38,
                        ),
                      ),

                      // Notifications
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              //search bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How do you feel?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ],
              ),

              SizedBox(
                height: 25,
              ),

// 4 different faces
              Row(
                children: [
                  //bad
                  SizedBox(
                    width: 25,
                  ),
                  EmoticonFace(),
                  SizedBox(
                    width: 25,
                  ),
                  //fine
                  EmoticonFace(),
                  SizedBox(
                    width: 25,
                  ),
                  //well
                  EmoticonFace(),
                  SizedBox(
                    width: 25,
                  ),
                  //excellent
                  EmoticonFace(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
