import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../screens/second_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              var url = Uri.https(
                  'www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});

              var response = await http.get(url);

              print('Response Status: ${response.statusCode}.');
              print('Response Body: ${response.body}.');
              var data = json.decode(response.body);
              String kind = data['items'][0]['kind'];
              String id = data['items'][0]['id'];

              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => SecondScreen(
                          kindBook: kind,
                          idBook: id,
                        )),
              );
            },
            child: Text('Go to next screen'),
          ),
        ),
      ),
    );
  }
}
