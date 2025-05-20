import 'package:flutter/material.dart';

class HorimiyaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Horimiya')),
      body: Column(
        children: [
          Image.asset('images/horimiya.jpg', height: 300, width: 200),
          Text(
            'Horimiya',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Horimiya is a romantic comedy anime that follows the story of two high school students, Kyoko Hori and Izumi Miyamura. Hori is a popular girl who is secretly a homebody, while Miyamura is a quiet boy with a hidden side. Their relationship blossoms as they discover each other\'s true selves.',
            ),
          ),
        ],
      ),
    );
  }
}
