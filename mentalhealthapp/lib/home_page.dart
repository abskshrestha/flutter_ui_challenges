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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                            ),
                          ),

                          Text(
                            'May 4, 2022',
                            style: TextStyle(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //bad
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😞',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Bad',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),

                      //fine

                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😐',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Fine',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),

                      //well

                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '🤗',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Well',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),

                      //excellent
                      Column(
                        children: [
                          EmoticonFace(
                            emoticonFace: '😍',
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Exce',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),

                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                padding: EdgeInsets.all(25),
                child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exercises',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(height: 12),
//list of
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey[100]),
                      child: Row(
                     
                      
                        children: [
                          Icon(Icons.favorite),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                               
                            children: [
                              Text(
                                'Speaking Skills',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '16 Exercises',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                          
                          Icon(
                            Icons.more_horiz,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
